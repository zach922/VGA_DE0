-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/13/2021 14:32:03"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DISPLAY IS
    PORT (
	I_CLK : IN std_logic;
	I_PATTERN_SEL : IN std_logic_vector(3 DOWNTO 0);
	O_VGA_HS : BUFFER std_logic;
	O_VGA_VS : BUFFER std_logic;
	O_VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	O_VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	O_VGA_B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END DISPLAY;

-- Design Ports Information
-- O_VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_PATTERN_SEL[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_PATTERN_SEL[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_PATTERN_SEL[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_PATTERN_SEL[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DISPLAY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I_CLK : std_logic;
SIGNAL ww_I_PATTERN_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O_VGA_HS : std_logic;
SIGNAL ww_O_VGA_VS : std_logic;
SIGNAL ww_O_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \I_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O_VGA_HS~output_o\ : std_logic;
SIGNAL \O_VGA_VS~output_o\ : std_logic;
SIGNAL \O_VGA_R[0]~output_o\ : std_logic;
SIGNAL \O_VGA_R[1]~output_o\ : std_logic;
SIGNAL \O_VGA_R[2]~output_o\ : std_logic;
SIGNAL \O_VGA_R[3]~output_o\ : std_logic;
SIGNAL \O_VGA_G[0]~output_o\ : std_logic;
SIGNAL \O_VGA_G[1]~output_o\ : std_logic;
SIGNAL \O_VGA_G[2]~output_o\ : std_logic;
SIGNAL \O_VGA_G[3]~output_o\ : std_logic;
SIGNAL \O_VGA_B[0]~output_o\ : std_logic;
SIGNAL \O_VGA_B[1]~output_o\ : std_logic;
SIGNAL \O_VGA_B[2]~output_o\ : std_logic;
SIGNAL \O_VGA_B[3]~output_o\ : std_logic;
SIGNAL \I_CLK~input_o\ : std_logic;
SIGNAL \I_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SYNC_SIG|Add1~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_COL_CNT~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~1\ : std_logic;
SIGNAL \SYNC_SIG|Add1~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~3\ : std_logic;
SIGNAL \SYNC_SIG|Add1~4_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~5\ : std_logic;
SIGNAL \SYNC_SIG|Add1~6_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~7\ : std_logic;
SIGNAL \SYNC_SIG|Add1~8_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_COL_CNT~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal0~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~9\ : std_logic;
SIGNAL \SYNC_SIG|Add1~10_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_COL_CNT~4_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~11\ : std_logic;
SIGNAL \SYNC_SIG|Add1~12_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~13\ : std_logic;
SIGNAL \SYNC_SIG|Add1~14_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~15\ : std_logic;
SIGNAL \SYNC_SIG|Add1~16_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~17\ : std_logic;
SIGNAL \SYNC_SIG|Add1~19\ : std_logic;
SIGNAL \SYNC_SIG|Add1~20_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_COL_CNT~1_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal0~1_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal0~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add1~18_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_COL_CNT~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan3~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan3~1_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan3~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan3~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~7\ : std_logic;
SIGNAL \SYNC_SIG|Add0~8_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal0~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~9\ : std_logic;
SIGNAL \SYNC_SIG|Add0~10_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~11\ : std_logic;
SIGNAL \SYNC_SIG|Add0~12_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~13\ : std_logic;
SIGNAL \SYNC_SIG|Add0~14_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~15\ : std_logic;
SIGNAL \SYNC_SIG|Add0~16_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~17\ : std_logic;
SIGNAL \SYNC_SIG|Add0~18_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_ROW_CNT~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal1~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal1~1_combout\ : std_logic;
SIGNAL \SYNC_SIG|Equal1~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_ROW_CNT~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~1\ : std_logic;
SIGNAL \SYNC_SIG|Add0~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~3\ : std_logic;
SIGNAL \SYNC_SIG|Add0~4_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_ROW_CNT~1_combout\ : std_logic;
SIGNAL \SYNC_SIG|Add0~5\ : std_logic;
SIGNAL \SYNC_SIG|Add0~6_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_ROW_CNT~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan4~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|LessThan4~1_combout\ : std_logic;
SIGNAL \I_PATTERN_SEL[1]~input_o\ : std_logic;
SIGNAL \I_PATTERN_SEL[3]~input_o\ : std_logic;
SIGNAL \I_PATTERN_SEL[2]~input_o\ : std_logic;
SIGNAL \SYNC_SIG|sync~4_combout\ : std_logic;
SIGNAL \SYNC_SIG|sync~2_combout\ : std_logic;
SIGNAL \SYNC_SIG|sync~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|sync~5_combout\ : std_logic;
SIGNAL \SYNC_SIG|sync~6_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_HACTIVE~q\ : std_logic;
SIGNAL \SYNC_SIG|R_VACTIVE~q\ : std_logic;
SIGNAL \O_VGA_R~0_combout\ : std_logic;
SIGNAL \O_VGA_R~1_combout\ : std_logic;
SIGNAL \I_PATTERN_SEL[0]~input_o\ : std_logic;
SIGNAL \O_VGA_G~0_combout\ : std_logic;
SIGNAL \PATTERN|Mux11~0_combout\ : std_logic;
SIGNAL \O_VGA_B~0_combout\ : std_logic;
SIGNAL \SYNC_SIG|R_ROW_CNT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SYNC_SIG|R_COL_CNT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \SYNC_SIG|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \SYNC_SIG|ALT_INV_LessThan4~1_combout\ : std_logic;

BEGIN

ww_I_CLK <= I_CLK;
ww_I_PATTERN_SEL <= I_PATTERN_SEL;
O_VGA_HS <= ww_O_VGA_HS;
O_VGA_VS <= ww_O_VGA_VS;
O_VGA_R <= ww_O_VGA_R;
O_VGA_G <= ww_O_VGA_G;
O_VGA_B <= ww_O_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\I_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \I_CLK~input_o\);
\SYNC_SIG|ALT_INV_LessThan3~3_combout\ <= NOT \SYNC_SIG|LessThan3~3_combout\;
\SYNC_SIG|ALT_INV_LessThan4~1_combout\ <= NOT \SYNC_SIG|LessThan4~1_combout\;

-- Location: IOOBUF_X41_Y18_N16
\O_VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNC_SIG|ALT_INV_LessThan3~3_combout\,
	devoe => ww_devoe,
	o => \O_VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\O_VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNC_SIG|ALT_INV_LessThan4~1_combout\,
	devoe => ww_devoe,
	o => \O_VGA_VS~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\O_VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \O_VGA_R[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\O_VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \O_VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\O_VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \O_VGA_R[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\O_VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \O_VGA_R[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\O_VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_G~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_G[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\O_VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_G~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\O_VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_G~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_G[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\O_VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_G~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_G[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\O_VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_B~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_B[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\O_VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_B~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\O_VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_B~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_B[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\O_VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_VGA_B~0_combout\,
	devoe => ww_devoe,
	o => \O_VGA_B[3]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\I_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_CLK,
	o => \I_CLK~input_o\);

-- Location: CLKCTRL_G9
\I_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \I_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \I_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y21_N2
\SYNC_SIG|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~0_combout\ = \SYNC_SIG|R_COL_CNT\(0) $ (VCC)
-- \SYNC_SIG|Add1~1\ = CARRY(\SYNC_SIG|R_COL_CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(0),
	datad => VCC,
	combout => \SYNC_SIG|Add1~0_combout\,
	cout => \SYNC_SIG|Add1~1\);

-- Location: LCCOMB_X33_Y21_N30
\SYNC_SIG|R_COL_CNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_COL_CNT~2_combout\ = (\SYNC_SIG|Add1~0_combout\ & ((!\SYNC_SIG|Equal0~2_combout\) # (!\SYNC_SIG|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|Add1~0_combout\,
	datac => \SYNC_SIG|Equal0~0_combout\,
	datad => \SYNC_SIG|Equal0~2_combout\,
	combout => \SYNC_SIG|R_COL_CNT~2_combout\);

-- Location: FF_X33_Y21_N31
\SYNC_SIG|R_COL_CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_COL_CNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(0));

-- Location: LCCOMB_X33_Y21_N4
\SYNC_SIG|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~2_combout\ = (\SYNC_SIG|R_COL_CNT\(1) & (!\SYNC_SIG|Add1~1\)) # (!\SYNC_SIG|R_COL_CNT\(1) & ((\SYNC_SIG|Add1~1\) # (GND)))
-- \SYNC_SIG|Add1~3\ = CARRY((!\SYNC_SIG|Add1~1\) # (!\SYNC_SIG|R_COL_CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(1),
	datad => VCC,
	cin => \SYNC_SIG|Add1~1\,
	combout => \SYNC_SIG|Add1~2_combout\,
	cout => \SYNC_SIG|Add1~3\);

-- Location: FF_X33_Y21_N5
\SYNC_SIG|R_COL_CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(1));

-- Location: LCCOMB_X33_Y21_N6
\SYNC_SIG|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~4_combout\ = (\SYNC_SIG|R_COL_CNT\(2) & (\SYNC_SIG|Add1~3\ $ (GND))) # (!\SYNC_SIG|R_COL_CNT\(2) & (!\SYNC_SIG|Add1~3\ & VCC))
-- \SYNC_SIG|Add1~5\ = CARRY((\SYNC_SIG|R_COL_CNT\(2) & !\SYNC_SIG|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(2),
	datad => VCC,
	cin => \SYNC_SIG|Add1~3\,
	combout => \SYNC_SIG|Add1~4_combout\,
	cout => \SYNC_SIG|Add1~5\);

-- Location: FF_X33_Y21_N7
\SYNC_SIG|R_COL_CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(2));

-- Location: LCCOMB_X33_Y21_N8
\SYNC_SIG|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~6_combout\ = (\SYNC_SIG|R_COL_CNT\(3) & (!\SYNC_SIG|Add1~5\)) # (!\SYNC_SIG|R_COL_CNT\(3) & ((\SYNC_SIG|Add1~5\) # (GND)))
-- \SYNC_SIG|Add1~7\ = CARRY((!\SYNC_SIG|Add1~5\) # (!\SYNC_SIG|R_COL_CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(3),
	datad => VCC,
	cin => \SYNC_SIG|Add1~5\,
	combout => \SYNC_SIG|Add1~6_combout\,
	cout => \SYNC_SIG|Add1~7\);

-- Location: FF_X33_Y21_N9
\SYNC_SIG|R_COL_CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(3));

-- Location: LCCOMB_X33_Y21_N10
\SYNC_SIG|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~8_combout\ = (\SYNC_SIG|R_COL_CNT\(4) & (\SYNC_SIG|Add1~7\ $ (GND))) # (!\SYNC_SIG|R_COL_CNT\(4) & (!\SYNC_SIG|Add1~7\ & VCC))
-- \SYNC_SIG|Add1~9\ = CARRY((\SYNC_SIG|R_COL_CNT\(4) & !\SYNC_SIG|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(4),
	datad => VCC,
	cin => \SYNC_SIG|Add1~7\,
	combout => \SYNC_SIG|Add1~8_combout\,
	cout => \SYNC_SIG|Add1~9\);

-- Location: LCCOMB_X33_Y21_N28
\SYNC_SIG|R_COL_CNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_COL_CNT~3_combout\ = (\SYNC_SIG|Add1~8_combout\ & ((!\SYNC_SIG|Equal0~0_combout\) # (!\SYNC_SIG|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|Equal0~2_combout\,
	datac => \SYNC_SIG|Equal0~0_combout\,
	datad => \SYNC_SIG|Add1~8_combout\,
	combout => \SYNC_SIG|R_COL_CNT~3_combout\);

-- Location: FF_X33_Y21_N29
\SYNC_SIG|R_COL_CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_COL_CNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(4));

-- Location: LCCOMB_X32_Y21_N4
\SYNC_SIG|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal0~0_combout\ = (!\SYNC_SIG|R_COL_CNT\(0) & (\SYNC_SIG|R_COL_CNT\(4) & (!\SYNC_SIG|R_COL_CNT\(1) & \SYNC_SIG|R_COL_CNT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(0),
	datab => \SYNC_SIG|R_COL_CNT\(4),
	datac => \SYNC_SIG|R_COL_CNT\(1),
	datad => \SYNC_SIG|R_COL_CNT\(5),
	combout => \SYNC_SIG|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y21_N12
\SYNC_SIG|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~10_combout\ = (\SYNC_SIG|R_COL_CNT\(5) & (!\SYNC_SIG|Add1~9\)) # (!\SYNC_SIG|R_COL_CNT\(5) & ((\SYNC_SIG|Add1~9\) # (GND)))
-- \SYNC_SIG|Add1~11\ = CARRY((!\SYNC_SIG|Add1~9\) # (!\SYNC_SIG|R_COL_CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(5),
	datad => VCC,
	cin => \SYNC_SIG|Add1~9\,
	combout => \SYNC_SIG|Add1~10_combout\,
	cout => \SYNC_SIG|Add1~11\);

-- Location: LCCOMB_X33_Y21_N26
\SYNC_SIG|R_COL_CNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_COL_CNT~4_combout\ = (\SYNC_SIG|Add1~10_combout\ & ((!\SYNC_SIG|Equal0~0_combout\) # (!\SYNC_SIG|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|Equal0~2_combout\,
	datac => \SYNC_SIG|Equal0~0_combout\,
	datad => \SYNC_SIG|Add1~10_combout\,
	combout => \SYNC_SIG|R_COL_CNT~4_combout\);

-- Location: FF_X33_Y21_N27
\SYNC_SIG|R_COL_CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_COL_CNT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(5));

-- Location: LCCOMB_X33_Y21_N14
\SYNC_SIG|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~12_combout\ = (\SYNC_SIG|R_COL_CNT\(6) & (\SYNC_SIG|Add1~11\ $ (GND))) # (!\SYNC_SIG|R_COL_CNT\(6) & (!\SYNC_SIG|Add1~11\ & VCC))
-- \SYNC_SIG|Add1~13\ = CARRY((\SYNC_SIG|R_COL_CNT\(6) & !\SYNC_SIG|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(6),
	datad => VCC,
	cin => \SYNC_SIG|Add1~11\,
	combout => \SYNC_SIG|Add1~12_combout\,
	cout => \SYNC_SIG|Add1~13\);

-- Location: FF_X33_Y21_N15
\SYNC_SIG|R_COL_CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(6));

-- Location: LCCOMB_X33_Y21_N16
\SYNC_SIG|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~14_combout\ = (\SYNC_SIG|R_COL_CNT\(7) & (!\SYNC_SIG|Add1~13\)) # (!\SYNC_SIG|R_COL_CNT\(7) & ((\SYNC_SIG|Add1~13\) # (GND)))
-- \SYNC_SIG|Add1~15\ = CARRY((!\SYNC_SIG|Add1~13\) # (!\SYNC_SIG|R_COL_CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(7),
	datad => VCC,
	cin => \SYNC_SIG|Add1~13\,
	combout => \SYNC_SIG|Add1~14_combout\,
	cout => \SYNC_SIG|Add1~15\);

-- Location: FF_X32_Y21_N25
\SYNC_SIG|R_COL_CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	asdata => \SYNC_SIG|Add1~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(7));

-- Location: LCCOMB_X33_Y21_N18
\SYNC_SIG|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~16_combout\ = (\SYNC_SIG|R_COL_CNT\(8) & (\SYNC_SIG|Add1~15\ $ (GND))) # (!\SYNC_SIG|R_COL_CNT\(8) & (!\SYNC_SIG|Add1~15\ & VCC))
-- \SYNC_SIG|Add1~17\ = CARRY((\SYNC_SIG|R_COL_CNT\(8) & !\SYNC_SIG|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(8),
	datad => VCC,
	cin => \SYNC_SIG|Add1~15\,
	combout => \SYNC_SIG|Add1~16_combout\,
	cout => \SYNC_SIG|Add1~17\);

-- Location: FF_X33_Y21_N19
\SYNC_SIG|R_COL_CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(8));

-- Location: LCCOMB_X33_Y21_N20
\SYNC_SIG|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~18_combout\ = (\SYNC_SIG|R_COL_CNT\(9) & (!\SYNC_SIG|Add1~17\)) # (!\SYNC_SIG|R_COL_CNT\(9) & ((\SYNC_SIG|Add1~17\) # (GND)))
-- \SYNC_SIG|Add1~19\ = CARRY((!\SYNC_SIG|Add1~17\) # (!\SYNC_SIG|R_COL_CNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(9),
	datad => VCC,
	cin => \SYNC_SIG|Add1~17\,
	combout => \SYNC_SIG|Add1~18_combout\,
	cout => \SYNC_SIG|Add1~19\);

-- Location: LCCOMB_X33_Y21_N22
\SYNC_SIG|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add1~20_combout\ = \SYNC_SIG|Add1~19\ $ (!\SYNC_SIG|R_COL_CNT\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SYNC_SIG|R_COL_CNT\(10),
	cin => \SYNC_SIG|Add1~19\,
	combout => \SYNC_SIG|Add1~20_combout\);

-- Location: LCCOMB_X33_Y21_N0
\SYNC_SIG|R_COL_CNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_COL_CNT~1_combout\ = (\SYNC_SIG|Add1~20_combout\ & ((!\SYNC_SIG|Equal0~2_combout\) # (!\SYNC_SIG|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|Equal0~0_combout\,
	datac => \SYNC_SIG|Add1~20_combout\,
	datad => \SYNC_SIG|Equal0~2_combout\,
	combout => \SYNC_SIG|R_COL_CNT~1_combout\);

-- Location: FF_X33_Y21_N1
\SYNC_SIG|R_COL_CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_COL_CNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(10));

-- Location: LCCOMB_X32_Y21_N18
\SYNC_SIG|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal0~1_combout\ = (!\SYNC_SIG|R_COL_CNT\(2) & (!\SYNC_SIG|R_COL_CNT\(7) & (!\SYNC_SIG|R_COL_CNT\(3) & !\SYNC_SIG|R_COL_CNT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(2),
	datab => \SYNC_SIG|R_COL_CNT\(7),
	datac => \SYNC_SIG|R_COL_CNT\(3),
	datad => \SYNC_SIG|R_COL_CNT\(6),
	combout => \SYNC_SIG|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y21_N28
\SYNC_SIG|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal0~2_combout\ = (\SYNC_SIG|R_COL_CNT\(9) & (!\SYNC_SIG|R_COL_CNT\(8) & (\SYNC_SIG|R_COL_CNT\(10) & \SYNC_SIG|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(9),
	datab => \SYNC_SIG|R_COL_CNT\(8),
	datac => \SYNC_SIG|R_COL_CNT\(10),
	datad => \SYNC_SIG|Equal0~1_combout\,
	combout => \SYNC_SIG|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y21_N24
\SYNC_SIG|R_COL_CNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_COL_CNT~0_combout\ = (\SYNC_SIG|Add1~18_combout\ & ((!\SYNC_SIG|Equal0~0_combout\) # (!\SYNC_SIG|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|Equal0~2_combout\,
	datac => \SYNC_SIG|Equal0~0_combout\,
	datad => \SYNC_SIG|Add1~18_combout\,
	combout => \SYNC_SIG|R_COL_CNT~0_combout\);

-- Location: FF_X33_Y21_N25
\SYNC_SIG|R_COL_CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_COL_CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_COL_CNT\(9));

-- Location: LCCOMB_X32_Y21_N14
\SYNC_SIG|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan3~0_combout\ = (!\SYNC_SIG|R_COL_CNT\(3) & (((!\SYNC_SIG|R_COL_CNT\(0) & !\SYNC_SIG|R_COL_CNT\(1))) # (!\SYNC_SIG|R_COL_CNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(0),
	datab => \SYNC_SIG|R_COL_CNT\(1),
	datac => \SYNC_SIG|R_COL_CNT\(3),
	datad => \SYNC_SIG|R_COL_CNT\(2),
	combout => \SYNC_SIG|LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\SYNC_SIG|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan3~1_combout\ = (\SYNC_SIG|R_COL_CNT\(4) & (\SYNC_SIG|R_COL_CNT\(6) & \SYNC_SIG|R_COL_CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_COL_CNT\(4),
	datac => \SYNC_SIG|R_COL_CNT\(6),
	datad => \SYNC_SIG|R_COL_CNT\(5),
	combout => \SYNC_SIG|LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y21_N24
\SYNC_SIG|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan3~2_combout\ = ((!\SYNC_SIG|R_COL_CNT\(7) & ((\SYNC_SIG|LessThan3~0_combout\) # (!\SYNC_SIG|LessThan3~1_combout\)))) # (!\SYNC_SIG|R_COL_CNT\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|LessThan3~0_combout\,
	datab => \SYNC_SIG|LessThan3~1_combout\,
	datac => \SYNC_SIG|R_COL_CNT\(7),
	datad => \SYNC_SIG|R_COL_CNT\(8),
	combout => \SYNC_SIG|LessThan3~2_combout\);

-- Location: LCCOMB_X32_Y21_N10
\SYNC_SIG|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan3~3_combout\ = ((!\SYNC_SIG|R_COL_CNT\(9) & \SYNC_SIG|LessThan3~2_combout\)) # (!\SYNC_SIG|R_COL_CNT\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(9),
	datab => \SYNC_SIG|R_COL_CNT\(10),
	datac => \SYNC_SIG|LessThan3~2_combout\,
	combout => \SYNC_SIG|LessThan3~3_combout\);

-- Location: LCCOMB_X31_Y21_N8
\SYNC_SIG|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~0_combout\ = \SYNC_SIG|R_ROW_CNT\(0) $ (VCC)
-- \SYNC_SIG|Add0~1\ = CARRY(\SYNC_SIG|R_ROW_CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(0),
	datad => VCC,
	combout => \SYNC_SIG|Add0~0_combout\,
	cout => \SYNC_SIG|Add0~1\);

-- Location: LCCOMB_X31_Y21_N14
\SYNC_SIG|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~6_combout\ = (\SYNC_SIG|R_ROW_CNT\(3) & (!\SYNC_SIG|Add0~5\)) # (!\SYNC_SIG|R_ROW_CNT\(3) & ((\SYNC_SIG|Add0~5\) # (GND)))
-- \SYNC_SIG|Add0~7\ = CARRY((!\SYNC_SIG|Add0~5\) # (!\SYNC_SIG|R_ROW_CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(3),
	datad => VCC,
	cin => \SYNC_SIG|Add0~5\,
	combout => \SYNC_SIG|Add0~6_combout\,
	cout => \SYNC_SIG|Add0~7\);

-- Location: LCCOMB_X31_Y21_N16
\SYNC_SIG|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~8_combout\ = (\SYNC_SIG|R_ROW_CNT\(4) & (\SYNC_SIG|Add0~7\ $ (GND))) # (!\SYNC_SIG|R_ROW_CNT\(4) & (!\SYNC_SIG|Add0~7\ & VCC))
-- \SYNC_SIG|Add0~9\ = CARRY((\SYNC_SIG|R_ROW_CNT\(4) & !\SYNC_SIG|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(4),
	datad => VCC,
	cin => \SYNC_SIG|Add0~7\,
	combout => \SYNC_SIG|Add0~8_combout\,
	cout => \SYNC_SIG|Add0~9\);

-- Location: LCCOMB_X32_Y21_N8
\SYNC_SIG|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal0~3_combout\ = (\SYNC_SIG|Equal0~0_combout\ & \SYNC_SIG|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC_SIG|Equal0~0_combout\,
	datad => \SYNC_SIG|Equal0~2_combout\,
	combout => \SYNC_SIG|Equal0~3_combout\);

-- Location: FF_X31_Y21_N17
\SYNC_SIG|R_ROW_CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~8_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(4));

-- Location: LCCOMB_X31_Y21_N18
\SYNC_SIG|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~10_combout\ = (\SYNC_SIG|R_ROW_CNT\(5) & (!\SYNC_SIG|Add0~9\)) # (!\SYNC_SIG|R_ROW_CNT\(5) & ((\SYNC_SIG|Add0~9\) # (GND)))
-- \SYNC_SIG|Add0~11\ = CARRY((!\SYNC_SIG|Add0~9\) # (!\SYNC_SIG|R_ROW_CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(5),
	datad => VCC,
	cin => \SYNC_SIG|Add0~9\,
	combout => \SYNC_SIG|Add0~10_combout\,
	cout => \SYNC_SIG|Add0~11\);

-- Location: FF_X31_Y21_N19
\SYNC_SIG|R_ROW_CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~10_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(5));

-- Location: LCCOMB_X31_Y21_N20
\SYNC_SIG|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~12_combout\ = (\SYNC_SIG|R_ROW_CNT\(6) & (\SYNC_SIG|Add0~11\ $ (GND))) # (!\SYNC_SIG|R_ROW_CNT\(6) & (!\SYNC_SIG|Add0~11\ & VCC))
-- \SYNC_SIG|Add0~13\ = CARRY((\SYNC_SIG|R_ROW_CNT\(6) & !\SYNC_SIG|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(6),
	datad => VCC,
	cin => \SYNC_SIG|Add0~11\,
	combout => \SYNC_SIG|Add0~12_combout\,
	cout => \SYNC_SIG|Add0~13\);

-- Location: FF_X31_Y21_N21
\SYNC_SIG|R_ROW_CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~12_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(6));

-- Location: LCCOMB_X31_Y21_N22
\SYNC_SIG|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~14_combout\ = (\SYNC_SIG|R_ROW_CNT\(7) & (!\SYNC_SIG|Add0~13\)) # (!\SYNC_SIG|R_ROW_CNT\(7) & ((\SYNC_SIG|Add0~13\) # (GND)))
-- \SYNC_SIG|Add0~15\ = CARRY((!\SYNC_SIG|Add0~13\) # (!\SYNC_SIG|R_ROW_CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(7),
	datad => VCC,
	cin => \SYNC_SIG|Add0~13\,
	combout => \SYNC_SIG|Add0~14_combout\,
	cout => \SYNC_SIG|Add0~15\);

-- Location: FF_X31_Y21_N23
\SYNC_SIG|R_ROW_CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~14_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(7));

-- Location: LCCOMB_X31_Y21_N24
\SYNC_SIG|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~16_combout\ = (\SYNC_SIG|R_ROW_CNT\(8) & (\SYNC_SIG|Add0~15\ $ (GND))) # (!\SYNC_SIG|R_ROW_CNT\(8) & (!\SYNC_SIG|Add0~15\ & VCC))
-- \SYNC_SIG|Add0~17\ = CARRY((\SYNC_SIG|R_ROW_CNT\(8) & !\SYNC_SIG|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_SIG|R_ROW_CNT\(8),
	datad => VCC,
	cin => \SYNC_SIG|Add0~15\,
	combout => \SYNC_SIG|Add0~16_combout\,
	cout => \SYNC_SIG|Add0~17\);

-- Location: FF_X31_Y21_N25
\SYNC_SIG|R_ROW_CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~16_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(8));

-- Location: LCCOMB_X31_Y21_N26
\SYNC_SIG|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~18_combout\ = \SYNC_SIG|Add0~17\ $ (\SYNC_SIG|R_ROW_CNT\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SYNC_SIG|R_ROW_CNT\(9),
	cin => \SYNC_SIG|Add0~17\,
	combout => \SYNC_SIG|Add0~18_combout\);

-- Location: LCCOMB_X31_Y21_N28
\SYNC_SIG|R_ROW_CNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_ROW_CNT~3_combout\ = (\SYNC_SIG|Add0~18_combout\ & !\SYNC_SIG|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC_SIG|Add0~18_combout\,
	datad => \SYNC_SIG|Equal1~2_combout\,
	combout => \SYNC_SIG|R_ROW_CNT~3_combout\);

-- Location: FF_X31_Y21_N29
\SYNC_SIG|R_ROW_CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_ROW_CNT~3_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(9));

-- Location: LCCOMB_X31_Y21_N30
\SYNC_SIG|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal1~0_combout\ = (!\SYNC_SIG|R_ROW_CNT\(5) & (!\SYNC_SIG|R_ROW_CNT\(4) & (!\SYNC_SIG|R_ROW_CNT\(7) & !\SYNC_SIG|R_ROW_CNT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(5),
	datab => \SYNC_SIG|R_ROW_CNT\(4),
	datac => \SYNC_SIG|R_ROW_CNT\(7),
	datad => \SYNC_SIG|R_ROW_CNT\(6),
	combout => \SYNC_SIG|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\SYNC_SIG|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal1~1_combout\ = (\SYNC_SIG|R_ROW_CNT\(3) & (!\SYNC_SIG|R_ROW_CNT\(0) & (\SYNC_SIG|R_ROW_CNT\(2) & !\SYNC_SIG|R_ROW_CNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(3),
	datab => \SYNC_SIG|R_ROW_CNT\(0),
	datac => \SYNC_SIG|R_ROW_CNT\(2),
	datad => \SYNC_SIG|R_ROW_CNT\(1),
	combout => \SYNC_SIG|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y21_N2
\SYNC_SIG|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Equal1~2_combout\ = (\SYNC_SIG|R_ROW_CNT\(9) & (!\SYNC_SIG|R_ROW_CNT\(8) & (\SYNC_SIG|Equal1~0_combout\ & \SYNC_SIG|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(9),
	datab => \SYNC_SIG|R_ROW_CNT\(8),
	datac => \SYNC_SIG|Equal1~0_combout\,
	datad => \SYNC_SIG|Equal1~1_combout\,
	combout => \SYNC_SIG|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y21_N4
\SYNC_SIG|R_ROW_CNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_ROW_CNT~0_combout\ = (\SYNC_SIG|Add0~0_combout\ & !\SYNC_SIG|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC_SIG|Add0~0_combout\,
	datad => \SYNC_SIG|Equal1~2_combout\,
	combout => \SYNC_SIG|R_ROW_CNT~0_combout\);

-- Location: FF_X31_Y21_N5
\SYNC_SIG|R_ROW_CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_ROW_CNT~0_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(0));

-- Location: LCCOMB_X31_Y21_N10
\SYNC_SIG|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~2_combout\ = (\SYNC_SIG|R_ROW_CNT\(1) & (!\SYNC_SIG|Add0~1\)) # (!\SYNC_SIG|R_ROW_CNT\(1) & ((\SYNC_SIG|Add0~1\) # (GND)))
-- \SYNC_SIG|Add0~3\ = CARRY((!\SYNC_SIG|Add0~1\) # (!\SYNC_SIG|R_ROW_CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(1),
	datad => VCC,
	cin => \SYNC_SIG|Add0~1\,
	combout => \SYNC_SIG|Add0~2_combout\,
	cout => \SYNC_SIG|Add0~3\);

-- Location: FF_X31_Y21_N11
\SYNC_SIG|R_ROW_CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|Add0~2_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(1));

-- Location: LCCOMB_X31_Y21_N12
\SYNC_SIG|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|Add0~4_combout\ = (\SYNC_SIG|R_ROW_CNT\(2) & (\SYNC_SIG|Add0~3\ $ (GND))) # (!\SYNC_SIG|R_ROW_CNT\(2) & (!\SYNC_SIG|Add0~3\ & VCC))
-- \SYNC_SIG|Add0~5\ = CARRY((\SYNC_SIG|R_ROW_CNT\(2) & !\SYNC_SIG|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(2),
	datad => VCC,
	cin => \SYNC_SIG|Add0~3\,
	combout => \SYNC_SIG|Add0~4_combout\,
	cout => \SYNC_SIG|Add0~5\);

-- Location: LCCOMB_X31_Y21_N6
\SYNC_SIG|R_ROW_CNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_ROW_CNT~1_combout\ = (\SYNC_SIG|Add0~4_combout\ & !\SYNC_SIG|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|Add0~4_combout\,
	datad => \SYNC_SIG|Equal1~2_combout\,
	combout => \SYNC_SIG|R_ROW_CNT~1_combout\);

-- Location: FF_X31_Y21_N7
\SYNC_SIG|R_ROW_CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_ROW_CNT~1_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(2));

-- Location: LCCOMB_X31_Y21_N0
\SYNC_SIG|R_ROW_CNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|R_ROW_CNT~2_combout\ = (\SYNC_SIG|Add0~6_combout\ & !\SYNC_SIG|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC_SIG|Add0~6_combout\,
	datad => \SYNC_SIG|Equal1~2_combout\,
	combout => \SYNC_SIG|R_ROW_CNT~2_combout\);

-- Location: FF_X31_Y21_N1
\SYNC_SIG|R_ROW_CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|R_ROW_CNT~2_combout\,
	ena => \SYNC_SIG|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_ROW_CNT\(3));

-- Location: LCCOMB_X32_Y21_N26
\SYNC_SIG|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan4~0_combout\ = ((!\SYNC_SIG|R_ROW_CNT\(2) & ((!\SYNC_SIG|R_ROW_CNT\(1)) # (!\SYNC_SIG|R_ROW_CNT\(0))))) # (!\SYNC_SIG|R_ROW_CNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_ROW_CNT\(3),
	datab => \SYNC_SIG|R_ROW_CNT\(2),
	datac => \SYNC_SIG|R_ROW_CNT\(0),
	datad => \SYNC_SIG|R_ROW_CNT\(1),
	combout => \SYNC_SIG|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y21_N0
\SYNC_SIG|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|LessThan4~1_combout\ = ((\SYNC_SIG|LessThan4~0_combout\ & (!\SYNC_SIG|R_ROW_CNT\(8) & \SYNC_SIG|Equal1~0_combout\))) # (!\SYNC_SIG|R_ROW_CNT\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|LessThan4~0_combout\,
	datab => \SYNC_SIG|R_ROW_CNT\(8),
	datac => \SYNC_SIG|Equal1~0_combout\,
	datad => \SYNC_SIG|R_ROW_CNT\(9),
	combout => \SYNC_SIG|LessThan4~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\I_PATTERN_SEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_PATTERN_SEL(1),
	o => \I_PATTERN_SEL[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\I_PATTERN_SEL[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_PATTERN_SEL(3),
	o => \I_PATTERN_SEL[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\I_PATTERN_SEL[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_PATTERN_SEL(2),
	o => \I_PATTERN_SEL[2]~input_o\);

-- Location: LCCOMB_X32_Y21_N30
\SYNC_SIG|sync~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|sync~4_combout\ = (\SYNC_SIG|LessThan3~1_combout\ & ((\SYNC_SIG|R_COL_CNT\(3)) # ((\SYNC_SIG|R_COL_CNT\(2) & \SYNC_SIG|R_COL_CNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(2),
	datab => \SYNC_SIG|R_COL_CNT\(1),
	datac => \SYNC_SIG|R_COL_CNT\(3),
	datad => \SYNC_SIG|LessThan3~1_combout\,
	combout => \SYNC_SIG|sync~4_combout\);

-- Location: LCCOMB_X32_Y21_N2
\SYNC_SIG|sync~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|sync~2_combout\ = (\SYNC_SIG|R_COL_CNT\(2) & (\SYNC_SIG|R_COL_CNT\(3) & (\SYNC_SIG|R_COL_CNT\(1) & \SYNC_SIG|R_COL_CNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(2),
	datab => \SYNC_SIG|R_COL_CNT\(3),
	datac => \SYNC_SIG|R_COL_CNT\(1),
	datad => \SYNC_SIG|R_COL_CNT\(4),
	combout => \SYNC_SIG|sync~2_combout\);

-- Location: LCCOMB_X32_Y21_N20
\SYNC_SIG|sync~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|sync~3_combout\ = (\SYNC_SIG|R_COL_CNT\(6) & ((\SYNC_SIG|R_COL_CNT\(5)) # ((\SYNC_SIG|R_COL_CNT\(0) & \SYNC_SIG|sync~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(0),
	datab => \SYNC_SIG|R_COL_CNT\(5),
	datac => \SYNC_SIG|R_COL_CNT\(6),
	datad => \SYNC_SIG|sync~2_combout\,
	combout => \SYNC_SIG|sync~3_combout\);

-- Location: LCCOMB_X32_Y21_N12
\SYNC_SIG|sync~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|sync~5_combout\ = (\SYNC_SIG|R_COL_CNT\(7) & (!\SYNC_SIG|R_COL_CNT\(8))) # (!\SYNC_SIG|R_COL_CNT\(7) & ((\SYNC_SIG|R_COL_CNT\(8) & (!\SYNC_SIG|sync~4_combout\)) # (!\SYNC_SIG|R_COL_CNT\(8) & ((\SYNC_SIG|sync~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(7),
	datab => \SYNC_SIG|R_COL_CNT\(8),
	datac => \SYNC_SIG|sync~4_combout\,
	datad => \SYNC_SIG|sync~3_combout\,
	combout => \SYNC_SIG|sync~5_combout\);

-- Location: LCCOMB_X32_Y21_N22
\SYNC_SIG|sync~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNC_SIG|sync~6_combout\ = (\SYNC_SIG|R_COL_CNT\(9) & (((!\SYNC_SIG|R_COL_CNT\(10))))) # (!\SYNC_SIG|R_COL_CNT\(9) & ((\SYNC_SIG|sync~5_combout\) # (\SYNC_SIG|R_COL_CNT\(8) $ (\SYNC_SIG|R_COL_CNT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_COL_CNT\(9),
	datab => \SYNC_SIG|R_COL_CNT\(8),
	datac => \SYNC_SIG|R_COL_CNT\(10),
	datad => \SYNC_SIG|sync~5_combout\,
	combout => \SYNC_SIG|sync~6_combout\);

-- Location: FF_X32_Y21_N23
\SYNC_SIG|R_HACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|sync~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_HACTIVE~q\);

-- Location: FF_X32_Y21_N1
\SYNC_SIG|R_VACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I_CLK~inputclkctrl_outclk\,
	d => \SYNC_SIG|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_SIG|R_VACTIVE~q\);

-- Location: LCCOMB_X33_Y23_N12
\O_VGA_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \O_VGA_R~0_combout\ = (!\I_PATTERN_SEL[3]~input_o\ & (!\I_PATTERN_SEL[2]~input_o\ & (\SYNC_SIG|R_HACTIVE~q\ & \SYNC_SIG|R_VACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_PATTERN_SEL[3]~input_o\,
	datab => \I_PATTERN_SEL[2]~input_o\,
	datac => \SYNC_SIG|R_HACTIVE~q\,
	datad => \SYNC_SIG|R_VACTIVE~q\,
	combout => \O_VGA_R~0_combout\);

-- Location: LCCOMB_X33_Y23_N30
\O_VGA_R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \O_VGA_R~1_combout\ = (!\I_PATTERN_SEL[1]~input_o\ & \O_VGA_R~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_PATTERN_SEL[1]~input_o\,
	datad => \O_VGA_R~0_combout\,
	combout => \O_VGA_R~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\I_PATTERN_SEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_PATTERN_SEL(0),
	o => \I_PATTERN_SEL[0]~input_o\);

-- Location: LCCOMB_X33_Y23_N20
\O_VGA_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \O_VGA_G~0_combout\ = (!\I_PATTERN_SEL[0]~input_o\ & \O_VGA_R~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_PATTERN_SEL[0]~input_o\,
	datad => \O_VGA_R~0_combout\,
	combout => \O_VGA_G~0_combout\);

-- Location: LCCOMB_X33_Y23_N2
\PATTERN|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PATTERN|Mux11~0_combout\ = (\I_PATTERN_SEL[2]~input_o\) # ((\I_PATTERN_SEL[3]~input_o\) # (\I_PATTERN_SEL[0]~input_o\ $ (\I_PATTERN_SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_PATTERN_SEL[0]~input_o\,
	datab => \I_PATTERN_SEL[2]~input_o\,
	datac => \I_PATTERN_SEL[1]~input_o\,
	datad => \I_PATTERN_SEL[3]~input_o\,
	combout => \PATTERN|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y23_N8
\O_VGA_B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \O_VGA_B~0_combout\ = (\SYNC_SIG|R_VACTIVE~q\ & (\SYNC_SIG|R_HACTIVE~q\ & !\PATTERN|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_SIG|R_VACTIVE~q\,
	datab => \SYNC_SIG|R_HACTIVE~q\,
	datad => \PATTERN|Mux11~0_combout\,
	combout => \O_VGA_B~0_combout\);

ww_O_VGA_HS <= \O_VGA_HS~output_o\;

ww_O_VGA_VS <= \O_VGA_VS~output_o\;

ww_O_VGA_R(0) <= \O_VGA_R[0]~output_o\;

ww_O_VGA_R(1) <= \O_VGA_R[1]~output_o\;

ww_O_VGA_R(2) <= \O_VGA_R[2]~output_o\;

ww_O_VGA_R(3) <= \O_VGA_R[3]~output_o\;

ww_O_VGA_G(0) <= \O_VGA_G[0]~output_o\;

ww_O_VGA_G(1) <= \O_VGA_G[1]~output_o\;

ww_O_VGA_G(2) <= \O_VGA_G[2]~output_o\;

ww_O_VGA_G(3) <= \O_VGA_G[3]~output_o\;

ww_O_VGA_B(0) <= \O_VGA_B[0]~output_o\;

ww_O_VGA_B(1) <= \O_VGA_B[1]~output_o\;

ww_O_VGA_B(2) <= \O_VGA_B[2]~output_o\;

ww_O_VGA_B(3) <= \O_VGA_B[3]~output_o\;
END structure;


