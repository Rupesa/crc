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
-- Generated on "12/09/2020 16:35:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          non_delayer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY non_delayer_vhd_vec_tst IS
END non_delayer_vhd_vec_tst;
ARCHITECTURE non_delayer_arch OF non_delayer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL nRst : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT non_delayer
	PORT (
	clk : IN STD_LOGIC;
	nRst : IN STD_LOGIC;
	s : OUT STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : non_delayer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	nRst => nRst,
	s => s,
	T => T
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '1';
WAIT;
END PROCESS t_prcs_nRst;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '0';
	WAIT FOR 160000 ps;
	T <= '1';
	WAIT FOR 40000 ps;
	T <= '0';
WAIT;
END PROCESS t_prcs_T;
END non_delayer_arch;
