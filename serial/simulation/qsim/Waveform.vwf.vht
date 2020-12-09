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
-- Generated on "12/08/2020 19:30:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux2to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux2to1_vhd_vec_tst IS
END mux2to1_vhd_vec_tst;
ARCHITECTURE mux2to1_arch OF mux2to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL o : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT mux2to1
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	o : OUT STD_LOGIC;
	s : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux2to1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	o => o,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- s
t_prcs_s: PROCESS
BEGIN
	s <= '1';
WAIT;
END PROCESS t_prcs_s;
END mux2to1_arch;
