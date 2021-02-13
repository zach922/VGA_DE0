library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- Creating VGA color patterns

entity PATTERNS is
    generic (
        VID_WIDTH : integer := 3
    );
    port (
        I_COL : in std_logic_vector(9 downto 0);
        I_ROW : in std_logic_vector(9 downto 0);
        I_PATTERN_SEL : in std_logic_vector(3 downto 0);
        --
        O_VGA_R : out std_logic_vector(VID_WIDTH downto 0) := "1111"; -- Pins H21, H20, H17, H19
        O_VGA_G : out std_logic_vector(VID_WIDTH downto 0) := "1111"; -- Pins H22, J17, K17, J21
        O_VGA_B : out std_logic_vector(VID_WIDTH downto 0) := "1111"  -- Pins K18, J22, K21, K22                 
    );
end entity PATTERNS;

architecture RTL of PATTERNS is

    signal R_VGA_R, R_VGA_G, R_VGA_B : std_logic_vector(VID_WIDTH downto 0);

begin
    
    PATTERN_SEL: process(I_PATTERN_SEL) 
    begin
        case I_PATTERN_SEL is
            when "0000" =>
                R_VGA_R <= "1111";
                R_VGA_G <= "1111";
                R_VGA_B <= "1111";
            when "0001" =>
                R_VGA_R <= "1111";
                R_VGA_G <= "0000";
                R_VGA_B <= "0000";
            when "0010" => 
                R_VGA_R <= "0000";
                R_VGA_G <= "1111";
                R_VGA_B <= "0000";
            when "0011" => 
                R_VGA_R <= "0000";
                R_VGA_G <= "0000";
                R_VGA_B <= "1111";
            when others =>        
                R_VGA_R <= "0000";
                R_VGA_G <= "0000";
                R_VGA_B <= "0000"; 
        end case;
    end process PATTERN_SEL;


    O_VGA_R <= R_VGA_R;
    O_VGA_G <= R_VGA_G;
    O_VGA_B <= R_VGA_B;
    
end architecture RTL;