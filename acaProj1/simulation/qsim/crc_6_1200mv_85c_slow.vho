-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/04/2020 11:11:36"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder_16_24 IS
    PORT (
	a0 : IN std_logic_vector(15 DOWNTO 0);
	s0 : OUT std_logic_vector(23 DOWNTO 0)
	);
END encoder_16_24;

-- Design Ports Information
-- s0[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[9]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[11]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[12]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[13]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[16]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[17]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[20]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[22]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[8]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[9]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[12]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_16_24 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_s0 : std_logic_vector(23 DOWNTO 0);
SIGNAL \s0[0]~output_o\ : std_logic;
SIGNAL \s0[1]~output_o\ : std_logic;
SIGNAL \s0[2]~output_o\ : std_logic;
SIGNAL \s0[3]~output_o\ : std_logic;
SIGNAL \s0[4]~output_o\ : std_logic;
SIGNAL \s0[5]~output_o\ : std_logic;
SIGNAL \s0[6]~output_o\ : std_logic;
SIGNAL \s0[7]~output_o\ : std_logic;
SIGNAL \s0[8]~output_o\ : std_logic;
SIGNAL \s0[9]~output_o\ : std_logic;
SIGNAL \s0[10]~output_o\ : std_logic;
SIGNAL \s0[11]~output_o\ : std_logic;
SIGNAL \s0[12]~output_o\ : std_logic;
SIGNAL \s0[13]~output_o\ : std_logic;
SIGNAL \s0[14]~output_o\ : std_logic;
SIGNAL \s0[15]~output_o\ : std_logic;
SIGNAL \s0[16]~output_o\ : std_logic;
SIGNAL \s0[17]~output_o\ : std_logic;
SIGNAL \s0[18]~output_o\ : std_logic;
SIGNAL \s0[19]~output_o\ : std_logic;
SIGNAL \s0[20]~output_o\ : std_logic;
SIGNAL \s0[21]~output_o\ : std_logic;
SIGNAL \s0[22]~output_o\ : std_logic;
SIGNAL \s0[23]~output_o\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[15]~input_o\ : std_logic;
SIGNAL \resto|s[0]~6_combout\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \a0[9]~input_o\ : std_logic;
SIGNAL \a0[8]~input_o\ : std_logic;
SIGNAL \a0[7]~input_o\ : std_logic;
SIGNAL \a0[5]~input_o\ : std_logic;
SIGNAL \resto|s[6]~4_combout\ : std_logic;
SIGNAL \a0[12]~input_o\ : std_logic;
SIGNAL \resto|s[5]~5_combout\ : std_logic;
SIGNAL \a0[11]~input_o\ : std_logic;
SIGNAL \a0[10]~input_o\ : std_logic;
SIGNAL \a0[13]~input_o\ : std_logic;
SIGNAL \resto|s[1]~8_combout\ : std_logic;
SIGNAL \a0[6]~input_o\ : std_logic;
SIGNAL \a0[4]~input_o\ : std_logic;
SIGNAL \resto|s[5]~7_combout\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \resto|s[1]~9_combout\ : std_logic;
SIGNAL \a0[14]~input_o\ : std_logic;
SIGNAL \resto|s[4]~10_combout\ : std_logic;
SIGNAL \resto|s[7]~11_combout\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \resto|s[2]~12_combout\ : std_logic;
SIGNAL \resto|s[2]~16_combout\ : std_logic;
SIGNAL \resto|s[3]~13_combout\ : std_logic;
SIGNAL \resto|s[4]~14_combout\ : std_logic;
SIGNAL \resto|s[6]~15_combout\ : std_logic;
SIGNAL \resto|s\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a0 <= a0;
s0 <= ww_s0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y24_N2
\s0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s\(0),
	devoe => ww_devoe,
	o => \s0[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\s0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s[1]~9_combout\,
	devoe => ww_devoe,
	o => \s0[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\s0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s[2]~16_combout\,
	devoe => ww_devoe,
	o => \s0[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\s0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s\(3),
	devoe => ww_devoe,
	o => \s0[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\s0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s\(4),
	devoe => ww_devoe,
	o => \s0[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\s0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s\(5),
	devoe => ww_devoe,
	o => \s0[5]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\s0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s[6]~15_combout\,
	devoe => ww_devoe,
	o => \s0[6]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\s0[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto|s\(7),
	devoe => ww_devoe,
	o => \s0[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\s0[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[0]~input_o\,
	devoe => ww_devoe,
	o => \s0[8]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\s0[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[1]~input_o\,
	devoe => ww_devoe,
	o => \s0[9]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\s0[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[2]~input_o\,
	devoe => ww_devoe,
	o => \s0[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\s0[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[3]~input_o\,
	devoe => ww_devoe,
	o => \s0[11]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\s0[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[4]~input_o\,
	devoe => ww_devoe,
	o => \s0[12]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\s0[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[5]~input_o\,
	devoe => ww_devoe,
	o => \s0[13]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\s0[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[6]~input_o\,
	devoe => ww_devoe,
	o => \s0[14]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\s0[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[7]~input_o\,
	devoe => ww_devoe,
	o => \s0[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\s0[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[8]~input_o\,
	devoe => ww_devoe,
	o => \s0[16]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\s0[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[9]~input_o\,
	devoe => ww_devoe,
	o => \s0[17]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\s0[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[10]~input_o\,
	devoe => ww_devoe,
	o => \s0[18]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\s0[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[11]~input_o\,
	devoe => ww_devoe,
	o => \s0[19]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\s0[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[12]~input_o\,
	devoe => ww_devoe,
	o => \s0[20]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\s0[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[13]~input_o\,
	devoe => ww_devoe,
	o => \s0[21]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\s0[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[14]~input_o\,
	devoe => ww_devoe,
	o => \s0[22]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\s0[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0[15]~input_o\,
	devoe => ww_devoe,
	o => \s0[23]~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\a0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\a0[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(15),
	o => \a0[15]~input_o\);

-- Location: LCCOMB_X31_Y17_N8
\resto|s[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[0]~6_combout\ = \a0[3]~input_o\ $ (\a0[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0[3]~input_o\,
	datac => \a0[15]~input_o\,
	combout => \resto|s[0]~6_combout\);

-- Location: IOIBUF_X31_Y31_N1
\a0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a0[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(9),
	o => \a0[9]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\a0[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(8),
	o => \a0[8]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\a0[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(7),
	o => \a0[7]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\a0[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(5),
	o => \a0[5]~input_o\);

-- Location: LCCOMB_X32_Y17_N16
\resto|s[6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[6]~4_combout\ = \a0[9]~input_o\ $ (\a0[8]~input_o\ $ (\a0[7]~input_o\ $ (\a0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[9]~input_o\,
	datab => \a0[8]~input_o\,
	datac => \a0[7]~input_o\,
	datad => \a0[5]~input_o\,
	combout => \resto|s[6]~4_combout\);

-- Location: IOIBUF_X33_Y10_N1
\a0[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(12),
	o => \a0[12]~input_o\);

-- Location: LCCOMB_X32_Y17_N2
\resto|s[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[5]~5_combout\ = \a0[0]~input_o\ $ (\resto|s[6]~4_combout\ $ (\a0[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[0]~input_o\,
	datab => \resto|s[6]~4_combout\,
	datac => \a0[12]~input_o\,
	combout => \resto|s[5]~5_combout\);

-- Location: IOIBUF_X29_Y31_N1
\a0[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(11),
	o => \a0[11]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\a0[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(10),
	o => \a0[10]~input_o\);

-- Location: LCCOMB_X32_Y17_N4
\resto|s[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s\(0) = \resto|s[0]~6_combout\ $ (\resto|s[5]~5_combout\ $ (\a0[11]~input_o\ $ (\a0[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto|s[0]~6_combout\,
	datab => \resto|s[5]~5_combout\,
	datac => \a0[11]~input_o\,
	datad => \a0[10]~input_o\,
	combout => \resto|s\(0));

-- Location: IOIBUF_X26_Y31_N8
\a0[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(13),
	o => \a0[13]~input_o\);

-- Location: LCCOMB_X32_Y17_N0
\resto|s[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[1]~8_combout\ = \resto|s[0]~6_combout\ $ (\a0[13]~input_o\ $ (\a0[7]~input_o\ $ (\a0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto|s[0]~6_combout\,
	datab => \a0[13]~input_o\,
	datac => \a0[7]~input_o\,
	datad => \a0[5]~input_o\,
	combout => \resto|s[1]~8_combout\);

-- Location: IOIBUF_X33_Y25_N8
\a0[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(6),
	o => \a0[6]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\a0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(4),
	o => \a0[4]~input_o\);

-- Location: LCCOMB_X32_Y17_N30
\resto|s[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[5]~7_combout\ = \a0[6]~input_o\ $ (\a0[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0[6]~input_o\,
	datac => \a0[4]~input_o\,
	combout => \resto|s[5]~7_combout\);

-- Location: IOIBUF_X26_Y0_N1
\a0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: LCCOMB_X32_Y17_N18
\resto|s[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[1]~9_combout\ = \a0[0]~input_o\ $ (\resto|s[1]~8_combout\ $ (\resto|s[5]~7_combout\ $ (\a0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[0]~input_o\,
	datab => \resto|s[1]~8_combout\,
	datac => \resto|s[5]~7_combout\,
	datad => \a0[1]~input_o\,
	combout => \resto|s[1]~9_combout\);

-- Location: IOIBUF_X22_Y31_N1
\a0[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(14),
	o => \a0[14]~input_o\);

-- Location: LCCOMB_X32_Y17_N20
\resto|s[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[4]~10_combout\ = \a0[9]~input_o\ $ (\a0[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0[9]~input_o\,
	datad => \a0[14]~input_o\,
	combout => \resto|s[4]~10_combout\);

-- Location: LCCOMB_X32_Y17_N6
\resto|s[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[7]~11_combout\ = \a0[11]~input_o\ $ (\resto|s[4]~10_combout\ $ (\resto|s[5]~7_combout\ $ (\a0[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[11]~input_o\,
	datab => \resto|s[4]~10_combout\,
	datac => \resto|s[5]~7_combout\,
	datad => \a0[10]~input_o\,
	combout => \resto|s[7]~11_combout\);

-- Location: IOIBUF_X33_Y22_N1
\a0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: LCCOMB_X32_Y17_N24
\resto|s[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[2]~12_combout\ = \a0[0]~input_o\ $ (\a0[12]~input_o\ $ (\a0[1]~input_o\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[0]~input_o\,
	datab => \a0[12]~input_o\,
	datac => \a0[1]~input_o\,
	datad => \a0[2]~input_o\,
	combout => \resto|s[2]~12_combout\);

-- Location: LCCOMB_X31_Y17_N2
\resto|s[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[2]~16_combout\ = \resto|s[7]~11_combout\ $ (\a0[3]~input_o\ $ (\a0[15]~input_o\ $ (\resto|s[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto|s[7]~11_combout\,
	datab => \a0[3]~input_o\,
	datac => \a0[15]~input_o\,
	datad => \resto|s[2]~12_combout\,
	combout => \resto|s[2]~16_combout\);

-- Location: LCCOMB_X32_Y17_N26
\resto|s[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[3]~13_combout\ = \a0[0]~input_o\ $ (\a0[4]~input_o\ $ (\a0[1]~input_o\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[0]~input_o\,
	datab => \a0[4]~input_o\,
	datac => \a0[1]~input_o\,
	datad => \a0[2]~input_o\,
	combout => \resto|s[3]~13_combout\);

-- Location: LCCOMB_X32_Y17_N28
\resto|s[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s\(3) = \a0[9]~input_o\ $ (\a0[8]~input_o\ $ (\resto|s[3]~13_combout\ $ (\a0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[9]~input_o\,
	datab => \a0[8]~input_o\,
	datac => \resto|s[3]~13_combout\,
	datad => \a0[13]~input_o\,
	combout => \resto|s\(3));

-- Location: LCCOMB_X32_Y17_N14
\resto|s[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[4]~14_combout\ = \a0[3]~input_o\ $ (\a0[1]~input_o\ $ (\a0[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0[3]~input_o\,
	datac => \a0[1]~input_o\,
	datad => \a0[10]~input_o\,
	combout => \resto|s[4]~14_combout\);

-- Location: LCCOMB_X32_Y17_N8
\resto|s[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s\(4) = \a0[5]~input_o\ $ (\resto|s[4]~10_combout\ $ (\resto|s[4]~14_combout\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[5]~input_o\,
	datab => \resto|s[4]~10_combout\,
	datac => \resto|s[4]~14_combout\,
	datad => \a0[2]~input_o\,
	combout => \resto|s\(4));

-- Location: LCCOMB_X32_Y17_N22
\resto|s[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s\(5) = \a0[4]~input_o\ $ (\resto|s[5]~5_combout\ $ (\a0[6]~input_o\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[4]~input_o\,
	datab => \resto|s[5]~5_combout\,
	datac => \a0[6]~input_o\,
	datad => \a0[2]~input_o\,
	combout => \resto|s\(5));

-- Location: LCCOMB_X32_Y17_N10
\resto|s[6]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s[6]~15_combout\ = \a0[13]~input_o\ $ (\resto|s[4]~14_combout\ $ (\a0[6]~input_o\ $ (\resto|s[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[13]~input_o\,
	datab => \resto|s[4]~14_combout\,
	datac => \a0[6]~input_o\,
	datad => \resto|s[6]~4_combout\,
	combout => \resto|s[6]~15_combout\);

-- Location: LCCOMB_X32_Y17_N12
\resto|s[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto|s\(7) = \resto|s[7]~11_combout\ $ (\a0[8]~input_o\ $ (\a0[7]~input_o\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto|s[7]~11_combout\,
	datab => \a0[8]~input_o\,
	datac => \a0[7]~input_o\,
	datad => \a0[2]~input_o\,
	combout => \resto|s\(7));

ww_s0(0) <= \s0[0]~output_o\;

ww_s0(1) <= \s0[1]~output_o\;

ww_s0(2) <= \s0[2]~output_o\;

ww_s0(3) <= \s0[3]~output_o\;

ww_s0(4) <= \s0[4]~output_o\;

ww_s0(5) <= \s0[5]~output_o\;

ww_s0(6) <= \s0[6]~output_o\;

ww_s0(7) <= \s0[7]~output_o\;

ww_s0(8) <= \s0[8]~output_o\;

ww_s0(9) <= \s0[9]~output_o\;

ww_s0(10) <= \s0[10]~output_o\;

ww_s0(11) <= \s0[11]~output_o\;

ww_s0(12) <= \s0[12]~output_o\;

ww_s0(13) <= \s0[13]~output_o\;

ww_s0(14) <= \s0[14]~output_o\;

ww_s0(15) <= \s0[15]~output_o\;

ww_s0(16) <= \s0[16]~output_o\;

ww_s0(17) <= \s0[17]~output_o\;

ww_s0(18) <= \s0[18]~output_o\;

ww_s0(19) <= \s0[19]~output_o\;

ww_s0(20) <= \s0[20]~output_o\;

ww_s0(21) <= \s0[21]~output_o\;

ww_s0(22) <= \s0[22]~output_o\;

ww_s0(23) <= \s0[23]~output_o\;
END structure;


