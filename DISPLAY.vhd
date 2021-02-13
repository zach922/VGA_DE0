library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- working on DE0 Board
-- Cyclone III FPGA

entity DISPLAY is
    generic (
        VID_WIDTH : integer := 3
    );
    port (
        I_CLK : in std_logic;
        I_PATTERN_SEL : in std_logic_vector(3 downto 0);
        -- 
        O_VGA_HS : out std_logic;
        O_VGA_VS : out std_logic;
        O_VGA_R : out std_logic_vector(VID_WIDTH downto 0); -- Pins H21, H20, H17, H19
        O_VGA_G : out std_logic_vector(VID_WIDTH downto 0); -- Pins H22, J17, K17, J21
        O_VGA_B : out std_logic_vector(VID_WIDTH downto 0)  -- Pins K18, J22, K21, K22                     -- Pin L21
    );
end entity DISPLAY;

architecture RTL of DISPLAY is
    
    signal W_VGA_R : std_logic_vector(VID_WIDTH downto 0); 
    signal W_VGA_G : std_logic_vector(VID_WIDTH downto 0); 
    signal W_VGA_B : std_logic_vector(VID_WIDTH downto 0); 
    signal W_HACTIVE : std_logic := '0';
    signal W_VACTIVE : std_logic := '0';
    signal W_COL_CNT : std_logic_vector(9 downto 0);
    signal W_ROW_CNT : std_logic_vector(9 downto 0);

    component VGA_SYNC
        port(
            I_CLK : in std_logic;
            --
            O_HACTIVE : out std_logic := '0';
            O_VACTIVE : out std_logic := '0';
            O_VGA_HS : out std_logic;                     -- Pin L21. Connect to I_VGA_HS
            O_VGA_VS : out std_logic;                     -- Pin L22. Connect to I_VGA_VS
            O_COL_CNT : out std_logic_vector(9 downto 0);
            O_ROW_CNT : out std_logic_vector(9 downto 0)
        );
    end component;

    component PATTERNS
        port(
            I_COL : std_logic_vector(9 downto 0);
            I_ROW : std_logic_vector(9 downto 0);
            I_PATTERN_SEL : in std_logic_vector(3 downto 0);
            --
            O_VGA_R : out std_logic_vector(VID_WIDTH downto 0); -- Pins H21, H20, H17, H19
            O_VGA_G : out std_logic_vector(VID_WIDTH downto 0); -- Pins H22, J17, K17, J21
            O_VGA_B : out std_logic_vector(VID_WIDTH downto 0)  -- Pins K18, J22, K21, K22                 
        );
    end component;

begin

    PATTERN: PATTERNS port map(
        I_COL => W_COL_CNT,
        I_ROW => W_ROW_CNT,
        I_PATTERN_SEL => I_PATTERN_SEL,
        O_VGA_R => W_VGA_R, 
        O_VGA_G => W_VGA_G, 
        O_VGA_B => W_VGA_B);

    SYNC_SIG: VGA_SYNC port map(
        I_CLK => I_CLK,
        O_HACTIVE => W_HACTIVE,
        O_VACTIVE => W_VACTIVE,
        O_VGA_HS => O_VGA_HS, 
        O_VGA_VS => O_VGA_VS, 
        O_COL_CNT => W_COL_CNT, 
        O_ROW_CNT => W_ROW_CNT);

    -- All high is just a white screen
    O_VGA_R <= W_VGA_R when W_HACTIVE = '1' and W_VACTIVE = '1' else "0000"; 
    O_VGA_G <= W_VGA_G when W_HACTIVE = '1' and W_VACTIVE = '1' else "0000";
    O_VGA_B <= W_VGA_B when W_HACTIVE = '1' and W_VACTIVE = '1' else "0000";

end architecture RTL;

