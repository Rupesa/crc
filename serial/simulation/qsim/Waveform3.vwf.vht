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
-- Generated on "12/09/2020 13:38:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          selector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY selector_vhd_vec_tst IS
END selector_vhd_vec_tst;
ARCHITECTURE selector_arch OF selector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_enabler : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT selector
	PORT (
	a_enabler : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	count : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : selector
	PORT MAP (
-- list connections between master ports and signals
	a_enabler => a_enabler,
	count => count
	);
-- count[3]
t_prcs_count_3: PROCESS
BEGIN
	count(3) <= '0';
	WAIT FOR 480000 ps;
	count(3) <= '1';
	WAIT FOR 480000 ps;
	count(3) <= '0';
WAIT;
END PROCESS t_prcs_count_3;
-- count[2]
t_prcs_count_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		count(2) <= '0';
		WAIT FOR 240000 ps;
		count(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	count(2) <= '0';
WAIT;
END PROCESS t_prcs_count_2;
-- count[1]
t_prcs_count_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		count(1) <= '0';
		WAIT FOR 120000 ps;
		count(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	count(1) <= '0';
WAIT;
END PROCESS t_prcs_count_1;
-- count[0]
t_prcs_count_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		count(0) <= '0';
		WAIT FOR 60000 ps;
		count(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	count(0) <= '0';
WAIT;
END PROCESS t_prcs_count_0;
END selector_arch;
