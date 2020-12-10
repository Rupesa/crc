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

-- DATE "12/09/2020 20:30:08"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder_serial IS
    PORT (
	clk : IN std_logic;
	nGRst : IN std_logic;
	ain : IN std_logic;
	ar : BUFFER std_logic;
	ended : BUFFER std_logic
	);
END encoder_serial;

-- Design Ports Information
-- ar	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ended	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ain	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_ain : std_logic;
SIGNAL ww_ar : std_logic;
SIGNAL ww_ended : std_logic;
SIGNAL \nGRst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ar~output_o\ : std_logic;
SIGNAL \ended~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \semi_parallel|counter|ff0|andd1|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \nGRst~inputclkctrl_outclk\ : std_logic;
SIGNAL \semi_parallel|counter|ff0|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|counter|ff1|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|counter|ff1|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|counter|ff2|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|counter|ff2|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|counter|ff3|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|counter|ff3|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|final1|y~combout\ : std_logic;
SIGNAL \semi_parallel|final2|Q~q\ : std_logic;
SIGNAL \semi_parallel|nd|ff0|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|nd|ff0|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|nd|s~combout\ : std_logic;
SIGNAL \serializer|counter|ff0|andd1|Q~0_combout\ : std_logic;
SIGNAL \serializer|counter|ff0|andd1|Q~q\ : std_logic;
SIGNAL \serializer|counter|ff1|andd1|Q~0_combout\ : std_logic;
SIGNAL \serializer|counter|ff1|andd1|Q~q\ : std_logic;
SIGNAL \serializer|counter|ff2|andd1|Q~0_combout\ : std_logic;
SIGNAL \serializer|counter|ff2|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux6~0_combout\ : std_logic;
SIGNAL \ain~input_o\ : std_logic;
SIGNAL \semi_parallel|ai_div|nr|y~combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft7|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft7|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux7~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft8|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft8|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux4~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft5|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft5|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux5~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft6|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft6|andd1|Q~q\ : std_logic;
SIGNAL \serializer|mux|res2|final|o~2_combout\ : std_logic;
SIGNAL \serializer|mux|res2|final|o~3_combout\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux1~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft2|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft2|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux0~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft1|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft1|andd1|Q~q\ : std_logic;
SIGNAL \serializer|mux|res2|final|o~0_combout\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux2~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft3|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft3|andd1|Q~q\ : std_logic;
SIGNAL \semi_parallel|ai_div|sel|Mux3~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft4|andd1|Q~0_combout\ : std_logic;
SIGNAL \semi_parallel|xors|fft4|andd1|Q~q\ : std_logic;
SIGNAL \serializer|mux|res2|final|o~1_combout\ : std_logic;
SIGNAL \final|o~0_combout\ : std_logic;
SIGNAL \final|o~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nGRst <= nGRst;
ww_ain <= ain;
ar <= ww_ar;
ended <= ww_ended;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nGRst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nGRst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
\ar~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \final|o~1_combout\,
	devoe => ww_devoe,
	o => \ar~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ended~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semi_parallel|nd|s~combout\,
	devoe => ww_devoe,
	o => \ended~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y4_N6
\semi_parallel|counter|ff0|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|counter|ff0|andd1|Q~0_combout\ = !\semi_parallel|counter|ff0|andd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|counter|ff0|andd1|Q~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: CLKCTRL_G19
\nGRst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nGRst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nGRst~inputclkctrl_outclk\);

-- Location: FF_X15_Y4_N7
\semi_parallel|counter|ff0|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|counter|ff0|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|counter|ff0|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N26
\semi_parallel|counter|ff1|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|counter|ff1|andd1|Q~0_combout\ = \semi_parallel|counter|ff1|andd1|Q~q\ $ (\semi_parallel|counter|ff0|andd1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semi_parallel|counter|ff1|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|counter|ff1|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N27
\semi_parallel|counter|ff1|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|counter|ff1|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|counter|ff1|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N8
\semi_parallel|counter|ff2|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|counter|ff2|andd1|Q~0_combout\ = \semi_parallel|counter|ff2|andd1|Q~q\ $ (((\semi_parallel|counter|ff1|andd1|Q~q\ & \semi_parallel|counter|ff0|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|counter|ff2|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|counter|ff2|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N9
\semi_parallel|counter|ff2|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|counter|ff2|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|counter|ff2|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N6
\semi_parallel|counter|ff3|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|counter|ff3|andd1|Q~0_combout\ = \semi_parallel|counter|ff3|andd1|Q~q\ $ (((\semi_parallel|counter|ff1|andd1|Q~q\ & (\semi_parallel|counter|ff2|andd1|Q~q\ & \semi_parallel|counter|ff0|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff1|andd1|Q~q\,
	datab => \semi_parallel|counter|ff2|andd1|Q~q\,
	datac => \semi_parallel|counter|ff3|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|counter|ff3|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N7
\semi_parallel|counter|ff3|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|counter|ff3|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|counter|ff3|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N16
\semi_parallel|final1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|final1|y~combout\ = (\semi_parallel|counter|ff2|andd1|Q~q\ & (\semi_parallel|counter|ff0|andd1|Q~q\ & (\semi_parallel|counter|ff1|andd1|Q~q\ & \semi_parallel|counter|ff3|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff2|andd1|Q~q\,
	datab => \semi_parallel|counter|ff0|andd1|Q~q\,
	datac => \semi_parallel|counter|ff1|andd1|Q~q\,
	datad => \semi_parallel|counter|ff3|andd1|Q~q\,
	combout => \semi_parallel|final1|y~combout\);

-- Location: FF_X15_Y4_N17
\semi_parallel|final2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|final1|y~combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|final2|Q~q\);

-- Location: LCCOMB_X15_Y4_N14
\semi_parallel|nd|ff0|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|nd|ff0|andd1|Q~0_combout\ = \semi_parallel|nd|ff0|andd1|Q~q\ $ (\semi_parallel|final2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semi_parallel|nd|ff0|andd1|Q~q\,
	datad => \semi_parallel|final2|Q~q\,
	combout => \semi_parallel|nd|ff0|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N15
\semi_parallel|nd|ff0|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|nd|ff0|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|nd|ff0|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N8
\semi_parallel|nd|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|nd|s~combout\ = (\semi_parallel|nd|ff0|andd1|Q~q\) # (\semi_parallel|final2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \semi_parallel|nd|ff0|andd1|Q~q\,
	datad => \semi_parallel|final2|Q~q\,
	combout => \semi_parallel|nd|s~combout\);

-- Location: LCCOMB_X15_Y4_N20
\serializer|counter|ff0|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|counter|ff0|andd1|Q~0_combout\ = !\serializer|counter|ff0|andd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serializer|counter|ff0|andd1|Q~q\,
	combout => \serializer|counter|ff0|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N21
\serializer|counter|ff0|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \serializer|counter|ff0|andd1|Q~0_combout\,
	clrn => \semi_parallel|nd|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serializer|counter|ff0|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N22
\serializer|counter|ff1|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|counter|ff1|andd1|Q~0_combout\ = \serializer|counter|ff1|andd1|Q~q\ $ (\serializer|counter|ff0|andd1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serializer|counter|ff1|andd1|Q~q\,
	datad => \serializer|counter|ff0|andd1|Q~q\,
	combout => \serializer|counter|ff1|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N23
\serializer|counter|ff1|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \serializer|counter|ff1|andd1|Q~0_combout\,
	clrn => \semi_parallel|nd|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serializer|counter|ff1|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N18
\serializer|counter|ff2|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|counter|ff2|andd1|Q~0_combout\ = \serializer|counter|ff2|andd1|Q~q\ $ (((\serializer|counter|ff1|andd1|Q~q\ & \serializer|counter|ff0|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serializer|counter|ff1|andd1|Q~q\,
	datab => \serializer|counter|ff0|andd1|Q~q\,
	datac => \serializer|counter|ff2|andd1|Q~q\,
	combout => \serializer|counter|ff2|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N19
\serializer|counter|ff2|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \serializer|counter|ff2|andd1|Q~0_combout\,
	clrn => \semi_parallel|nd|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serializer|counter|ff2|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N0
\semi_parallel|ai_div|sel|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux6~0_combout\ = (\semi_parallel|counter|ff2|andd1|Q~q\ & (((!\semi_parallel|counter|ff1|andd1|Q~q\ & \semi_parallel|counter|ff0|andd1|Q~q\)) # (!\semi_parallel|counter|ff3|andd1|Q~q\))) # (!\semi_parallel|counter|ff2|andd1|Q~q\ 
-- & (((!\semi_parallel|counter|ff3|andd1|Q~q\ & \semi_parallel|counter|ff0|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff1|andd1|Q~q\,
	datab => \semi_parallel|counter|ff2|andd1|Q~q\,
	datac => \semi_parallel|counter|ff3|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux6~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\ain~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ain,
	o => \ain~input_o\);

-- Location: LCCOMB_X15_Y4_N24
\semi_parallel|ai_div|nr|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|nr|y~combout\ = (\ain~input_o\ & (!\semi_parallel|final2|Q~q\ & (!\semi_parallel|nd|ff0|andd1|Q~q\ & \nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ain~input_o\,
	datab => \semi_parallel|final2|Q~q\,
	datac => \semi_parallel|nd|ff0|andd1|Q~q\,
	datad => \nGRst~input_o\,
	combout => \semi_parallel|ai_div|nr|y~combout\);

-- Location: LCCOMB_X14_Y4_N12
\semi_parallel|xors|fft7|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft7|andd1|Q~0_combout\ = \semi_parallel|xors|fft7|andd1|Q~q\ $ (((!\semi_parallel|ai_div|sel|Mux6~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|sel|Mux6~0_combout\,
	datac => \semi_parallel|xors|fft7|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft7|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N13
\semi_parallel|xors|fft7|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft7|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft7|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N30
\semi_parallel|ai_div|sel|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux7~0_combout\ = (\semi_parallel|counter|ff2|andd1|Q~q\ & (\semi_parallel|counter|ff3|andd1|Q~q\ & (\semi_parallel|counter|ff1|andd1|Q~q\ $ (\semi_parallel|counter|ff0|andd1|Q~q\)))) # (!\semi_parallel|counter|ff2|andd1|Q~q\ & 
-- (\semi_parallel|counter|ff0|andd1|Q~q\ $ (((\semi_parallel|counter|ff1|andd1|Q~q\ & !\semi_parallel|counter|ff3|andd1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff1|andd1|Q~q\,
	datab => \semi_parallel|counter|ff2|andd1|Q~q\,
	datac => \semi_parallel|counter|ff3|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y4_N22
\semi_parallel|xors|fft8|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft8|andd1|Q~0_combout\ = \semi_parallel|xors|fft8|andd1|Q~q\ $ (((!\semi_parallel|ai_div|sel|Mux7~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|ai_div|sel|Mux7~0_combout\,
	datac => \semi_parallel|xors|fft8|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft8|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N23
\semi_parallel|xors|fft8|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft8|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft8|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N24
\semi_parallel|ai_div|sel|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux4~0_combout\ = (\semi_parallel|counter|ff1|andd1|Q~q\ & ((\semi_parallel|counter|ff2|andd1|Q~q\) # (\semi_parallel|counter|ff3|andd1|Q~q\ $ (!\semi_parallel|counter|ff0|andd1|Q~q\)))) # (!\semi_parallel|counter|ff1|andd1|Q~q\ 
-- & (\semi_parallel|counter|ff3|andd1|Q~q\ & (\semi_parallel|counter|ff2|andd1|Q~q\ & \semi_parallel|counter|ff0|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff3|andd1|Q~q\,
	datab => \semi_parallel|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|counter|ff2|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y4_N28
\semi_parallel|xors|fft5|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft5|andd1|Q~0_combout\ = \semi_parallel|xors|fft5|andd1|Q~q\ $ (((\semi_parallel|ai_div|sel|Mux4~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|sel|Mux4~0_combout\,
	datac => \semi_parallel|xors|fft5|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft5|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N29
\semi_parallel|xors|fft5|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft5|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft5|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N10
\semi_parallel|ai_div|sel|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux5~0_combout\ = (\semi_parallel|counter|ff3|andd1|Q~q\ & (((!\semi_parallel|counter|ff2|andd1|Q~q\ & !\semi_parallel|counter|ff0|andd1|Q~q\)))) # (!\semi_parallel|counter|ff3|andd1|Q~q\ & (\semi_parallel|counter|ff1|andd1|Q~q\ 
-- & (\semi_parallel|counter|ff2|andd1|Q~q\ $ (!\semi_parallel|counter|ff0|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff1|andd1|Q~q\,
	datab => \semi_parallel|counter|ff2|andd1|Q~q\,
	datac => \semi_parallel|counter|ff3|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y4_N18
\semi_parallel|xors|fft6|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft6|andd1|Q~0_combout\ = \semi_parallel|xors|fft6|andd1|Q~q\ $ (((!\semi_parallel|ai_div|sel|Mux5~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|ai_div|sel|Mux5~0_combout\,
	datac => \semi_parallel|xors|fft6|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft6|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N19
\semi_parallel|xors|fft6|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft6|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft6|andd1|Q~q\);

-- Location: LCCOMB_X13_Y4_N24
\serializer|mux|res2|final|o~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|mux|res2|final|o~2_combout\ = (\serializer|counter|ff0|andd1|Q~q\ & (((\serializer|counter|ff1|andd1|Q~q\) # (\semi_parallel|xors|fft6|andd1|Q~q\)))) # (!\serializer|counter|ff0|andd1|Q~q\ & (\semi_parallel|xors|fft5|andd1|Q~q\ & 
-- (!\serializer|counter|ff1|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serializer|counter|ff0|andd1|Q~q\,
	datab => \semi_parallel|xors|fft5|andd1|Q~q\,
	datac => \serializer|counter|ff1|andd1|Q~q\,
	datad => \semi_parallel|xors|fft6|andd1|Q~q\,
	combout => \serializer|mux|res2|final|o~2_combout\);

-- Location: LCCOMB_X14_Y4_N4
\serializer|mux|res2|final|o~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|mux|res2|final|o~3_combout\ = (\serializer|counter|ff1|andd1|Q~q\ & ((\serializer|mux|res2|final|o~2_combout\ & ((\semi_parallel|xors|fft8|andd1|Q~q\))) # (!\serializer|mux|res2|final|o~2_combout\ & (\semi_parallel|xors|fft7|andd1|Q~q\)))) # 
-- (!\serializer|counter|ff1|andd1|Q~q\ & (((\serializer|mux|res2|final|o~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|xors|fft7|andd1|Q~q\,
	datab => \serializer|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|xors|fft8|andd1|Q~q\,
	datad => \serializer|mux|res2|final|o~2_combout\,
	combout => \serializer|mux|res2|final|o~3_combout\);

-- Location: LCCOMB_X14_Y4_N16
\semi_parallel|ai_div|sel|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux1~0_combout\ = (\semi_parallel|counter|ff3|andd1|Q~q\ & (((!\semi_parallel|counter|ff1|andd1|Q~q\ & !\semi_parallel|counter|ff2|andd1|Q~q\)) # (!\semi_parallel|counter|ff0|andd1|Q~q\))) # 
-- (!\semi_parallel|counter|ff3|andd1|Q~q\ & ((\semi_parallel|counter|ff0|andd1|Q~q\ & ((\semi_parallel|counter|ff2|andd1|Q~q\))) # (!\semi_parallel|counter|ff0|andd1|Q~q\ & (\semi_parallel|counter|ff1|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff3|andd1|Q~q\,
	datab => \semi_parallel|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|counter|ff2|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y4_N20
\semi_parallel|xors|fft2|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft2|andd1|Q~0_combout\ = \semi_parallel|xors|fft2|andd1|Q~q\ $ (((\semi_parallel|ai_div|sel|Mux1~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|sel|Mux1~0_combout\,
	datac => \semi_parallel|xors|fft2|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft2|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N21
\semi_parallel|xors|fft2|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft2|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft2|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N2
\semi_parallel|ai_div|sel|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux0~0_combout\ = (\semi_parallel|counter|ff0|andd1|Q~q\ & ((\semi_parallel|counter|ff3|andd1|Q~q\ $ (\semi_parallel|counter|ff2|andd1|Q~q\)) # (!\semi_parallel|counter|ff1|andd1|Q~q\))) # (!\semi_parallel|counter|ff0|andd1|Q~q\ 
-- & ((\semi_parallel|counter|ff3|andd1|Q~q\ & (!\semi_parallel|counter|ff1|andd1|Q~q\ & !\semi_parallel|counter|ff2|andd1|Q~q\)) # (!\semi_parallel|counter|ff3|andd1|Q~q\ & ((\semi_parallel|counter|ff2|andd1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff0|andd1|Q~q\,
	datab => \semi_parallel|counter|ff3|andd1|Q~q\,
	datac => \semi_parallel|counter|ff1|andd1|Q~q\,
	datad => \semi_parallel|counter|ff2|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y4_N30
\semi_parallel|xors|fft1|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft1|andd1|Q~0_combout\ = \semi_parallel|xors|fft1|andd1|Q~q\ $ (((\semi_parallel|ai_div|nr|y~combout\ & \semi_parallel|ai_div|sel|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|nr|y~combout\,
	datac => \semi_parallel|xors|fft1|andd1|Q~q\,
	datad => \semi_parallel|ai_div|sel|Mux0~0_combout\,
	combout => \semi_parallel|xors|fft1|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N31
\semi_parallel|xors|fft1|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft1|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft1|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N12
\serializer|mux|res2|final|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|mux|res2|final|o~0_combout\ = (\serializer|counter|ff0|andd1|Q~q\ & ((\semi_parallel|xors|fft2|andd1|Q~q\) # ((\serializer|counter|ff1|andd1|Q~q\)))) # (!\serializer|counter|ff0|andd1|Q~q\ & (((\semi_parallel|xors|fft1|andd1|Q~q\ & 
-- !\serializer|counter|ff1|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serializer|counter|ff0|andd1|Q~q\,
	datab => \semi_parallel|xors|fft2|andd1|Q~q\,
	datac => \semi_parallel|xors|fft1|andd1|Q~q\,
	datad => \serializer|counter|ff1|andd1|Q~q\,
	combout => \serializer|mux|res2|final|o~0_combout\);

-- Location: LCCOMB_X15_Y4_N0
\semi_parallel|ai_div|sel|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux2~0_combout\ = (\semi_parallel|counter|ff3|andd1|Q~q\ & ((\semi_parallel|counter|ff0|andd1|Q~q\) # ((!\semi_parallel|counter|ff2|andd1|Q~q\)))) # (!\semi_parallel|counter|ff3|andd1|Q~q\ & (\semi_parallel|counter|ff1|andd1|Q~q\ 
-- & ((\semi_parallel|counter|ff0|andd1|Q~q\) # (\semi_parallel|counter|ff2|andd1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff0|andd1|Q~q\,
	datab => \semi_parallel|counter|ff3|andd1|Q~q\,
	datac => \semi_parallel|counter|ff1|andd1|Q~q\,
	datad => \semi_parallel|counter|ff2|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y4_N28
\semi_parallel|xors|fft3|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft3|andd1|Q~0_combout\ = \semi_parallel|xors|fft3|andd1|Q~q\ $ (((\semi_parallel|ai_div|nr|y~combout\ & \semi_parallel|ai_div|sel|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|nr|y~combout\,
	datac => \semi_parallel|xors|fft3|andd1|Q~q\,
	datad => \semi_parallel|ai_div|sel|Mux2~0_combout\,
	combout => \semi_parallel|xors|fft3|andd1|Q~0_combout\);

-- Location: FF_X15_Y4_N29
\semi_parallel|xors|fft3|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft3|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft3|andd1|Q~q\);

-- Location: LCCOMB_X14_Y4_N2
\semi_parallel|ai_div|sel|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|ai_div|sel|Mux3~0_combout\ = (\semi_parallel|counter|ff1|andd1|Q~q\ & (!\semi_parallel|counter|ff0|andd1|Q~q\ & ((\semi_parallel|counter|ff3|andd1|Q~q\) # (\semi_parallel|counter|ff2|andd1|Q~q\)))) # (!\semi_parallel|counter|ff1|andd1|Q~q\ 
-- & ((\semi_parallel|counter|ff3|andd1|Q~q\ & (\semi_parallel|counter|ff2|andd1|Q~q\)) # (!\semi_parallel|counter|ff3|andd1|Q~q\ & ((\semi_parallel|counter|ff0|andd1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|counter|ff3|andd1|Q~q\,
	datab => \semi_parallel|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|counter|ff2|andd1|Q~q\,
	datad => \semi_parallel|counter|ff0|andd1|Q~q\,
	combout => \semi_parallel|ai_div|sel|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\semi_parallel|xors|fft4|andd1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \semi_parallel|xors|fft4|andd1|Q~0_combout\ = \semi_parallel|xors|fft4|andd1|Q~q\ $ (((\semi_parallel|ai_div|sel|Mux3~0_combout\ & \semi_parallel|ai_div|nr|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \semi_parallel|ai_div|sel|Mux3~0_combout\,
	datac => \semi_parallel|xors|fft4|andd1|Q~q\,
	datad => \semi_parallel|ai_div|nr|y~combout\,
	combout => \semi_parallel|xors|fft4|andd1|Q~0_combout\);

-- Location: FF_X14_Y4_N15
\semi_parallel|xors|fft4|andd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semi_parallel|xors|fft4|andd1|Q~0_combout\,
	clrn => \nGRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semi_parallel|xors|fft4|andd1|Q~q\);

-- Location: LCCOMB_X15_Y4_N26
\serializer|mux|res2|final|o~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \serializer|mux|res2|final|o~1_combout\ = (\serializer|mux|res2|final|o~0_combout\ & (((\semi_parallel|xors|fft4|andd1|Q~q\)) # (!\serializer|counter|ff1|andd1|Q~q\))) # (!\serializer|mux|res2|final|o~0_combout\ & (\serializer|counter|ff1|andd1|Q~q\ & 
-- (\semi_parallel|xors|fft3|andd1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serializer|mux|res2|final|o~0_combout\,
	datab => \serializer|counter|ff1|andd1|Q~q\,
	datac => \semi_parallel|xors|fft3|andd1|Q~q\,
	datad => \semi_parallel|xors|fft4|andd1|Q~q\,
	combout => \serializer|mux|res2|final|o~1_combout\);

-- Location: LCCOMB_X15_Y4_N4
\final|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \final|o~0_combout\ = (\semi_parallel|nd|s~combout\ & (!\serializer|counter|ff2|andd1|Q~q\ & ((\serializer|mux|res2|final|o~1_combout\)))) # (!\semi_parallel|nd|s~combout\ & (((\ain~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|nd|s~combout\,
	datab => \serializer|counter|ff2|andd1|Q~q\,
	datac => \ain~input_o\,
	datad => \serializer|mux|res2|final|o~1_combout\,
	combout => \final|o~0_combout\);

-- Location: LCCOMB_X15_Y4_N10
\final|o~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \final|o~1_combout\ = (\final|o~0_combout\) # ((\semi_parallel|nd|s~combout\ & (\serializer|counter|ff2|andd1|Q~q\ & \serializer|mux|res2|final|o~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semi_parallel|nd|s~combout\,
	datab => \serializer|counter|ff2|andd1|Q~q\,
	datac => \serializer|mux|res2|final|o~3_combout\,
	datad => \final|o~0_combout\,
	combout => \final|o~1_combout\);

ww_ar <= \ar~output_o\;

ww_ended <= \ended~output_o\;
END structure;


