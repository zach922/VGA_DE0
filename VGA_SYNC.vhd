library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- Clock
    -- either 50Mhz or 25Mhs
    -- 50 Mhz = 20ns
        -- 190 Clocks: 0
        -- 1395 Clocks: 1
        -- 1585 Clocks Total
    -- 25 Mhs = 40ns 
        
-- VGA Signal Timing http://www.tinyvga.com/vga-timing/640x480@60Hz
-- Vertical (multiply everything by 2 because clock is actually 50Mhz)
-- 50 Mhz = 50 clk/mus
--  27.94 mus/704 pixels high => 27.94*50 = 1397 clock cycles
--  3.81 mus/96 pixels low => 3.81*50 = 190.5 clock cycles
--  Total: 800

-- Horizontal 
--  /523 pixels high => 
--  /2 pixels low => 

-- For 25Mhz 
--   27.94 mus*25 => 793.75 clocks
--   3.81 mus*25 => 95.25 clocks

entity VGA_SYNC is
    generic (
        VGA_COLS : integer := 1585; --800    -- resolution 640 x 480
        VGA_ROWS : integer := 525; 
        ACTIVE_COLS : integer := 1397;  --640
        ACTIVE_ROWS : integer := 523;
        FRONT_PORCH : integer := 95
    );
    port (
        I_CLK : in std_logic;
        O_HACTIVE : out std_logic := '0';
        O_VACTIVE : out std_logic := '0';
        O_VGA_HS : out std_logic;                      -- Pin L21
        O_VGA_VS : out std_logic;                      -- Pin L22
        O_COL_CNT : out std_logic_vector(9 downto 0);
        O_ROW_CNT : out std_logic_vector(9 downto 0)
    );
end entity VGA_SYNC;

architecture RTL of VGA_SYNC is
    
    signal R_COL_CNT : integer range 0 to VGA_COLS-1 := 0;
    signal R_ROW_CNT : integer range 0 to VGA_ROWS-1 := 0;
    signal R_HACTIVE : std_logic;
    signal R_VACTIVE : std_logic;

begin
    sync: process(I_CLK) begin
        if rising_edge(I_CLK) then
            if R_COL_CNT = VGA_COLS-1 then
                if R_ROW_CNT = VGA_ROWS-1 then
                    R_ROW_CNT <= 0;
                else 
                    R_ROW_CNT <= R_ROW_CNT+1;
                end if;
                    R_COL_CNT <= 0;
            else 
                R_COL_CNT <= R_COL_CNT+1;
            end if;
            if R_COL_CNT > ACTIVE_COLS or R_COL_CNT < FRONT_PORCH then
                R_HACTIVE <= '0';
            else 
                R_HACTIVE <= '1';
            end if;
            if R_ROW_CNT > ACTIVE_ROWS-1 then
                R_VACTIVE <= '0';
            else 
                R_VACTIVE <= '1';
            end if;
        end if;
    end process sync;
    
    O_VGA_HS <= '0' when R_COL_CNT < ACTIVE_COLS else '1';
    O_VGA_VS <= '0' when R_ROW_CNT < ACTIVE_ROWS else '1';
    
    O_VACTIVE <= R_VACTIVE;
    O_HACTIVE <= R_HACTIVE;

    O_COL_CNT <= std_logic_vector(to_unsigned(R_COL_CNT, O_COL_CNT'length));
    O_ROW_CNT <= std_logic_vector(to_unsigned(R_ROW_CNT, O_ROW_CNT'length));

end architecture RTL;