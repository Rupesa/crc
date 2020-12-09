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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/09/2020 19:34:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder_serial
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_serial_vhd_vec_tst IS
END encoder_serial_vhd_vec_tst;
ARCHITECTURE encoder_serial_arch OF encoder_serial_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ain : STD_LOGIC;
SIGNAL ar : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ended : STD_LOGIC;
SIGNAL nGRst : STD_LOGIC;
COMPONENT encoder_serial
	PORT (
	ain : IN STD_LOGIC;
	ar : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	ended : BUFFER STD_LOGIC;
	nGRst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : encoder_serial
	PORT MAP (
-- list connections between master ports and signals
	ain => ain,
	ar => ar,
	clk => clk,
	ended => ended,
	nGRst => nGRst
	);

-- ain
t_prcs_ain: PROCESS
BEGIN
	ain <= '1';
	WAIT FOR 450000 ps;
	ain <= '0';
WAIT;
END PROCESS t_prcs_ain;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- nGRst
t_prcs_nGRst: PROCESS
BEGIN
	nGRst <= '1';
WAIT;
END PROCESS t_prcs_nGRst;
END encoder_serial_arch;
