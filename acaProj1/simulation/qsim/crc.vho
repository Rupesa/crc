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

-- DATE "12/04/2020 15:02:30"

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

ENTITY 	checker_24_1 IS
    PORT (
	a0 : IN std_logic_vector(23 DOWNTO 0);
	s0 : OUT std_logic
	);
END checker_24_1;

-- Design Ports Information
-- s0	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[16]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[11]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[17]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[18]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[23]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[20]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[19]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[12]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[22]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[14]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checker_24_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_s0 : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \a0[7]~input_o\ : std_logic;
SIGNAL \a0[5]~input_o\ : std_logic;
SIGNAL \a0[20]~input_o\ : std_logic;
SIGNAL \a0[12]~input_o\ : std_logic;
SIGNAL \a0[8]~input_o\ : std_logic;
SIGNAL \a0[13]~input_o\ : std_logic;
SIGNAL \saida|y[5]~9_combout\ : std_logic;
SIGNAL \saida|y[5]~10_combout\ : std_logic;
SIGNAL \a0[22]~input_o\ : std_logic;
SIGNAL \a0[18]~input_o\ : std_logic;
SIGNAL \a0[19]~input_o\ : std_logic;
SIGNAL \saida|y[7]~5_combout\ : std_logic;
SIGNAL \a0[14]~input_o\ : std_logic;
SIGNAL \a0[10]~input_o\ : std_logic;
SIGNAL \a0[16]~input_o\ : std_logic;
SIGNAL \a0[15]~input_o\ : std_logic;
SIGNAL \saida|y[6]~0_combout\ : std_logic;
SIGNAL \a0[17]~input_o\ : std_logic;
SIGNAL \saida|y[7]~8_combout\ : std_logic;
SIGNAL \saida|v~0_combout\ : std_logic;
SIGNAL \a0[11]~input_o\ : std_logic;
SIGNAL \a0[23]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \saida|y[2]~6_combout\ : std_logic;
SIGNAL \a0[9]~input_o\ : std_logic;
SIGNAL \saida|y[3]~4_combout\ : std_logic;
SIGNAL \saida|y[2]~7_combout\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[21]~input_o\ : std_logic;
SIGNAL \saida|y[3]~16_combout\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \saida|y[1]~12_combout\ : std_logic;
SIGNAL \saida|y[1]~11_combout\ : std_logic;
SIGNAL \saida|y[1]~13_combout\ : std_logic;
SIGNAL \saida|y[6]~1_combout\ : std_logic;
SIGNAL \a0[6]~input_o\ : std_logic;
SIGNAL \saida|y[6]~14_combout\ : std_logic;
SIGNAL \a0[4]~input_o\ : std_logic;
SIGNAL \saida|y[4]~15_combout\ : std_logic;
SIGNAL \saida|v~1_combout\ : std_logic;
SIGNAL \saida|v~2_combout\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \saida|y[0]~2_combout\ : std_logic;
SIGNAL \saida|y[0]~3_combout\ : std_logic;
SIGNAL \saida|v~combout\ : std_logic;

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

-- Location: IOOBUF_X33_Y10_N9
\s0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida|v~combout\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOIBUF_X33_Y10_N1
\a0[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(7),
	o => \a0[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a0[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(5),
	o => \a0[5]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\a0[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(20),
	o => \a0[20]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\a0[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(12),
	o => \a0[12]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\a0[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(8),
	o => \a0[8]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\a0[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(13),
	o => \a0[13]~input_o\);

-- Location: LCCOMB_X30_Y18_N24
\saida|y[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[5]~9_combout\ = \a0[20]~input_o\ $ (\a0[12]~input_o\ $ (\a0[8]~input_o\ $ (\a0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[20]~input_o\,
	datab => \a0[12]~input_o\,
	datac => \a0[8]~input_o\,
	datad => \a0[13]~input_o\,
	combout => \saida|y[5]~9_combout\);

-- Location: LCCOMB_X29_Y14_N24
\saida|y[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[5]~10_combout\ = \a0[5]~input_o\ $ (\saida|y[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0[5]~input_o\,
	datad => \saida|y[5]~9_combout\,
	combout => \saida|y[5]~10_combout\);

-- Location: IOIBUF_X33_Y22_N1
\a0[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(22),
	o => \a0[22]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\a0[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(18),
	o => \a0[18]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\a0[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(19),
	o => \a0[19]~input_o\);

-- Location: LCCOMB_X30_Y18_N18
\saida|y[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[7]~5_combout\ = \a0[22]~input_o\ $ (\a0[12]~input_o\ $ (\a0[18]~input_o\ $ (\a0[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[22]~input_o\,
	datab => \a0[12]~input_o\,
	datac => \a0[18]~input_o\,
	datad => \a0[19]~input_o\,
	combout => \saida|y[7]~5_combout\);

-- Location: IOIBUF_X26_Y0_N8
\a0[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(14),
	o => \a0[14]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\a0[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(10),
	o => \a0[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a0[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(16),
	o => \a0[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a0[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(15),
	o => \a0[15]~input_o\);

-- Location: LCCOMB_X30_Y18_N8
\saida|y[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[6]~0_combout\ = \a0[16]~input_o\ $ (\a0[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0[16]~input_o\,
	datac => \a0[15]~input_o\,
	combout => \saida|y[6]~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\a0[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(17),
	o => \a0[17]~input_o\);

-- Location: LCCOMB_X30_Y18_N22
\saida|y[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[7]~8_combout\ = \a0[14]~input_o\ $ (\a0[10]~input_o\ $ (\saida|y[6]~0_combout\ $ (\a0[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[14]~input_o\,
	datab => \a0[10]~input_o\,
	datac => \saida|y[6]~0_combout\,
	datad => \a0[17]~input_o\,
	combout => \saida|y[7]~8_combout\);

-- Location: LCCOMB_X29_Y14_N10
\saida|v~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|v~0_combout\ = (\saida|y[5]~10_combout\ & ((\a0[7]~input_o\ $ (!\saida|y[7]~5_combout\)) # (!\saida|y[7]~8_combout\))) # (!\saida|y[5]~10_combout\ & ((\saida|y[7]~8_combout\) # (\a0[7]~input_o\ $ (\saida|y[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[7]~input_o\,
	datab => \saida|y[5]~10_combout\,
	datac => \saida|y[7]~5_combout\,
	datad => \saida|y[7]~8_combout\,
	combout => \saida|v~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\a0[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(11),
	o => \a0[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\a0[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(23),
	o => \a0[23]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\a0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: LCCOMB_X27_Y15_N16
\saida|y[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[2]~6_combout\ = \a0[14]~input_o\ $ (\a0[11]~input_o\ $ (\a0[23]~input_o\ $ (\a0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[14]~input_o\,
	datab => \a0[11]~input_o\,
	datac => \a0[23]~input_o\,
	datad => \a0[2]~input_o\,
	combout => \saida|y[2]~6_combout\);

-- Location: IOIBUF_X29_Y31_N8
\a0[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(9),
	o => \a0[9]~input_o\);

-- Location: LCCOMB_X30_Y18_N0
\saida|y[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[3]~4_combout\ = \a0[9]~input_o\ $ (\a0[10]~input_o\ $ (\a0[8]~input_o\ $ (\a0[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[9]~input_o\,
	datab => \a0[10]~input_o\,
	datac => \a0[8]~input_o\,
	datad => \a0[17]~input_o\,
	combout => \saida|y[3]~4_combout\);

-- Location: LCCOMB_X30_Y18_N20
\saida|y[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[2]~7_combout\ = \a0[20]~input_o\ $ (\saida|y[7]~5_combout\ $ (\saida|y[2]~6_combout\ $ (\saida|y[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[20]~input_o\,
	datab => \saida|y[7]~5_combout\,
	datac => \saida|y[2]~6_combout\,
	datad => \saida|y[3]~4_combout\,
	combout => \saida|y[2]~7_combout\);

-- Location: IOIBUF_X33_Y16_N22
\a0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\a0[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(21),
	o => \a0[21]~input_o\);

-- Location: LCCOMB_X30_Y18_N12
\saida|y[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[3]~16_combout\ = \a0[3]~input_o\ $ (\a0[12]~input_o\ $ (\a0[21]~input_o\ $ (\a0[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[3]~input_o\,
	datab => \a0[12]~input_o\,
	datac => \a0[21]~input_o\,
	datad => \a0[16]~input_o\,
	combout => \saida|y[3]~16_combout\);

-- Location: IOIBUF_X33_Y11_N1
\a0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: LCCOMB_X27_Y15_N26
\saida|y[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[1]~12_combout\ = \a0[14]~input_o\ $ (\a0[1]~input_o\ $ (\a0[23]~input_o\ $ (\a0[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[14]~input_o\,
	datab => \a0[1]~input_o\,
	datac => \a0[23]~input_o\,
	datad => \a0[11]~input_o\,
	combout => \saida|y[1]~12_combout\);

-- Location: LCCOMB_X30_Y18_N2
\saida|y[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[1]~11_combout\ = \a0[9]~input_o\ $ (\a0[12]~input_o\ $ (\a0[8]~input_o\ $ (\a0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[9]~input_o\,
	datab => \a0[12]~input_o\,
	datac => \a0[8]~input_o\,
	datad => \a0[13]~input_o\,
	combout => \saida|y[1]~11_combout\);

-- Location: LCCOMB_X30_Y18_N28
\saida|y[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[1]~13_combout\ = \saida|y[1]~12_combout\ $ (\a0[15]~input_o\ $ (\a0[21]~input_o\ $ (\saida|y[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida|y[1]~12_combout\,
	datab => \a0[15]~input_o\,
	datac => \a0[21]~input_o\,
	datad => \saida|y[1]~11_combout\,
	combout => \saida|y[1]~13_combout\);

-- Location: LCCOMB_X30_Y18_N26
\saida|y[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[6]~1_combout\ = \a0[11]~input_o\ $ (\a0[13]~input_o\ $ (\a0[18]~input_o\ $ (\a0[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[11]~input_o\,
	datab => \a0[13]~input_o\,
	datac => \a0[18]~input_o\,
	datad => \a0[17]~input_o\,
	combout => \saida|y[6]~1_combout\);

-- Location: IOIBUF_X33_Y24_N1
\a0[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(6),
	o => \a0[6]~input_o\);

-- Location: LCCOMB_X30_Y18_N30
\saida|y[6]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[6]~14_combout\ = \a0[14]~input_o\ $ (\a0[21]~input_o\ $ (\a0[9]~input_o\ $ (\a0[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[14]~input_o\,
	datab => \a0[21]~input_o\,
	datac => \a0[9]~input_o\,
	datad => \a0[6]~input_o\,
	combout => \saida|y[6]~14_combout\);

-- Location: IOIBUF_X29_Y31_N1
\a0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(4),
	o => \a0[4]~input_o\);

-- Location: LCCOMB_X30_Y18_N16
\saida|y[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[4]~15_combout\ = \a0[9]~input_o\ $ (\a0[10]~input_o\ $ (\a0[22]~input_o\ $ (\a0[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[9]~input_o\,
	datab => \a0[10]~input_o\,
	datac => \a0[22]~input_o\,
	datad => \a0[4]~input_o\,
	combout => \saida|y[4]~15_combout\);

-- Location: LCCOMB_X30_Y18_N10
\saida|v~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|v~1_combout\ = (\saida|y[6]~1_combout\ & ((\saida|y[6]~0_combout\ $ (!\saida|y[6]~14_combout\)) # (!\saida|y[4]~15_combout\))) # (!\saida|y[6]~1_combout\ & ((\saida|y[4]~15_combout\) # (\saida|y[6]~0_combout\ $ (\saida|y[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida|y[6]~1_combout\,
	datab => \saida|y[6]~0_combout\,
	datac => \saida|y[6]~14_combout\,
	datad => \saida|y[4]~15_combout\,
	combout => \saida|v~1_combout\);

-- Location: LCCOMB_X30_Y18_N14
\saida|v~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|v~2_combout\ = (\saida|y[1]~13_combout\) # ((\saida|v~1_combout\) # (\saida|y[3]~16_combout\ $ (\saida|y[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida|y[3]~16_combout\,
	datab => \saida|y[1]~13_combout\,
	datac => \saida|v~1_combout\,
	datad => \saida|y[3]~4_combout\,
	combout => \saida|v~2_combout\);

-- Location: IOIBUF_X33_Y25_N8
\a0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: LCCOMB_X30_Y18_N4
\saida|y[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[0]~2_combout\ = \a0[20]~input_o\ $ (\a0[0]~input_o\ $ (\a0[8]~input_o\ $ (\a0[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0[20]~input_o\,
	datab => \a0[0]~input_o\,
	datac => \a0[8]~input_o\,
	datad => \a0[19]~input_o\,
	combout => \saida|y[0]~2_combout\);

-- Location: LCCOMB_X30_Y18_N6
\saida|y[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|y[0]~3_combout\ = \saida|y[6]~1_combout\ $ (\saida|y[0]~2_combout\ $ (\saida|y[6]~0_combout\ $ (\a0[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida|y[6]~1_combout\,
	datab => \saida|y[0]~2_combout\,
	datac => \saida|y[6]~0_combout\,
	datad => \a0[23]~input_o\,
	combout => \saida|y[0]~3_combout\);

-- Location: LCCOMB_X29_Y14_N4
\saida|v\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida|v~combout\ = (\saida|v~0_combout\) # ((\saida|y[2]~7_combout\) # ((\saida|v~2_combout\) # (\saida|y[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida|v~0_combout\,
	datab => \saida|y[2]~7_combout\,
	datac => \saida|v~2_combout\,
	datad => \saida|y[0]~3_combout\,
	combout => \saida|v~combout\);

ww_s0 <= \s0~output_o\;
END structure;


