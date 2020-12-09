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
-- Generated on "12/07/2020 16:42:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ai_divider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ai_divider_vhd_vec_tst IS
END ai_divider_vhd_vec_tst;
ARCHITECTURE ai_divider_arch OF ai_divider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_relevance : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ai : STD_LOGIC;
SIGNAL index : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nRst : STD_LOGIC;
COMPONENT ai_divider
	PORT (
	a_relevance : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ai : IN STD_LOGIC;
	index : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	nRst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ai_divider
	PORT MAP (
-- list connections between master ports and signals
	a_relevance => a_relevance,
	ai => ai,
	index => index,
	nRst => nRst
	);

-- ai
t_prcs_ai: PROCESS
BEGIN
	ai <= '1';
WAIT;
END PROCESS t_prcs_ai;
-- index[3]
t_prcs_index_3: PROCESS
BEGIN
	index(3) <= '0';
	WAIT FOR 480000 ps;
	index(3) <= '1';
	WAIT FOR 480000 ps;
	index(3) <= '0';
WAIT;
END PROCESS t_prcs_index_3;
-- index[2]
t_prcs_index_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		index(2) <= '0';
		WAIT FOR 240000 ps;
		index(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	index(2) <= '0';
WAIT;
END PROCESS t_prcs_index_2;
-- index[1]
t_prcs_index_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		index(1) <= '0';
		WAIT FOR 120000 ps;
		index(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	index(1) <= '0';
WAIT;
END PROCESS t_prcs_index_1;
-- index[0]
t_prcs_index_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		index(0) <= '0';
		WAIT FOR 60000 ps;
		index(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	index(0) <= '0';
WAIT;
END PROCESS t_prcs_index_0;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '0';
	WAIT FOR 20000 ps;
	nRst <= '1';
	WAIT FOR 970000 ps;
	nRst <= '0';
WAIT;
END PROCESS t_prcs_nRst;
END ai_divider_arch;
