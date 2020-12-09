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
-- Generated on "12/07/2020 14:18:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux16to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux16to1_vhd_vec_tst IS
END mux16to1_vhd_vec_tst;
ARCHITECTURE mux16to1_arch OF mux16to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux16to1
	PORT (
	i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	o : OUT STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux16to1
	PORT MAP (
-- list connections between master ports and signals
	i => i,
	o => o,
	s => s
	);
-- i[15]
t_prcs_i_15: PROCESS
BEGIN
	i(15) <= '1';
	WAIT FOR 80000 ps;
	i(15) <= '0';
	WAIT FOR 200000 ps;
	i(15) <= '1';
	WAIT FOR 40000 ps;
	i(15) <= '0';
	WAIT FOR 80000 ps;
	i(15) <= '1';
	WAIT FOR 120000 ps;
	i(15) <= '0';
	WAIT FOR 40000 ps;
	i(15) <= '1';
	WAIT FOR 40000 ps;
	i(15) <= '0';
	WAIT FOR 40000 ps;
	i(15) <= '1';
	WAIT FOR 40000 ps;
	i(15) <= '0';
	WAIT FOR 120000 ps;
	i(15) <= '1';
	WAIT FOR 80000 ps;
	i(15) <= '0';
	WAIT FOR 40000 ps;
	i(15) <= '1';
	WAIT FOR 40000 ps;
	i(15) <= '0';
WAIT;
END PROCESS t_prcs_i_15;
-- i[14]
t_prcs_i_14: PROCESS
BEGIN
	i(14) <= '0';
	WAIT FOR 160000 ps;
	i(14) <= '1';
	WAIT FOR 80000 ps;
	i(14) <= '0';
	WAIT FOR 40000 ps;
	i(14) <= '1';
	WAIT FOR 40000 ps;
	i(14) <= '0';
	WAIT FOR 120000 ps;
	i(14) <= '1';
	WAIT FOR 40000 ps;
	i(14) <= '0';
	WAIT FOR 40000 ps;
	i(14) <= '1';
	WAIT FOR 80000 ps;
	i(14) <= '0';
	WAIT FOR 80000 ps;
	i(14) <= '1';
	WAIT FOR 40000 ps;
	i(14) <= '0';
	WAIT FOR 40000 ps;
	i(14) <= '1';
	WAIT FOR 120000 ps;
	i(14) <= '0';
	WAIT FOR 80000 ps;
	i(14) <= '1';
WAIT;
END PROCESS t_prcs_i_14;
-- i[13]
t_prcs_i_13: PROCESS
BEGIN
	i(13) <= '1';
	WAIT FOR 40000 ps;
	i(13) <= '0';
	WAIT FOR 40000 ps;
	i(13) <= '1';
	WAIT FOR 200000 ps;
	i(13) <= '0';
	WAIT FOR 40000 ps;
	i(13) <= '1';
	WAIT FOR 40000 ps;
	i(13) <= '0';
	WAIT FOR 120000 ps;
	i(13) <= '1';
	WAIT FOR 80000 ps;
	i(13) <= '0';
	WAIT FOR 40000 ps;
	i(13) <= '1';
	WAIT FOR 80000 ps;
	i(13) <= '0';
	WAIT FOR 200000 ps;
	i(13) <= '1';
WAIT;
END PROCESS t_prcs_i_13;
-- i[12]
t_prcs_i_12: PROCESS
BEGIN
	i(12) <= '0';
	WAIT FOR 40000 ps;
	i(12) <= '1';
	WAIT FOR 80000 ps;
	i(12) <= '0';
	WAIT FOR 120000 ps;
	i(12) <= '1';
	WAIT FOR 40000 ps;
	i(12) <= '0';
	WAIT FOR 120000 ps;
	i(12) <= '1';
	WAIT FOR 40000 ps;
	i(12) <= '0';
	WAIT FOR 80000 ps;
	i(12) <= '1';
	WAIT FOR 40000 ps;
	i(12) <= '0';
	WAIT FOR 80000 ps;
	i(12) <= '1';
	WAIT FOR 80000 ps;
	i(12) <= '0';
	WAIT FOR 40000 ps;
	i(12) <= '1';
	WAIT FOR 120000 ps;
	i(12) <= '0';
	WAIT FOR 40000 ps;
	i(12) <= '1';
WAIT;
END PROCESS t_prcs_i_12;
-- i[11]
t_prcs_i_11: PROCESS
BEGIN
	i(11) <= '1';
	WAIT FOR 40000 ps;
	i(11) <= '0';
	WAIT FOR 80000 ps;
	i(11) <= '1';
	WAIT FOR 160000 ps;
	i(11) <= '0';
	WAIT FOR 80000 ps;
	i(11) <= '1';
	WAIT FOR 120000 ps;
	i(11) <= '0';
	WAIT FOR 80000 ps;
	i(11) <= '1';
	WAIT FOR 160000 ps;
	i(11) <= '0';
	WAIT FOR 40000 ps;
	i(11) <= '1';
	WAIT FOR 160000 ps;
	i(11) <= '0';
	WAIT FOR 40000 ps;
	i(11) <= '1';
WAIT;
END PROCESS t_prcs_i_11;
-- i[10]
t_prcs_i_10: PROCESS
BEGIN
	i(10) <= '1';
	WAIT FOR 80000 ps;
	i(10) <= '0';
	WAIT FOR 80000 ps;
	i(10) <= '1';
	WAIT FOR 80000 ps;
	i(10) <= '0';
	WAIT FOR 40000 ps;
	i(10) <= '1';
	WAIT FOR 40000 ps;
	i(10) <= '0';
	WAIT FOR 80000 ps;
	i(10) <= '1';
	WAIT FOR 80000 ps;
	i(10) <= '0';
	WAIT FOR 80000 ps;
	i(10) <= '1';
	WAIT FOR 40000 ps;
	i(10) <= '0';
	WAIT FOR 40000 ps;
	i(10) <= '1';
	WAIT FOR 40000 ps;
	i(10) <= '0';
	WAIT FOR 40000 ps;
	i(10) <= '1';
	WAIT FOR 80000 ps;
	i(10) <= '0';
	WAIT FOR 40000 ps;
	i(10) <= '1';
	WAIT FOR 80000 ps;
	i(10) <= '0';
	WAIT FOR 40000 ps;
	i(10) <= '1';
WAIT;
END PROCESS t_prcs_i_10;
-- i[9]
t_prcs_i_9: PROCESS
BEGIN
	i(9) <= '0';
	WAIT FOR 80000 ps;
	i(9) <= '1';
	WAIT FOR 40000 ps;
	i(9) <= '0';
	WAIT FOR 120000 ps;
	i(9) <= '1';
	WAIT FOR 40000 ps;
	i(9) <= '0';
	WAIT FOR 40000 ps;
	i(9) <= '1';
	WAIT FOR 80000 ps;
	i(9) <= '0';
	WAIT FOR 280000 ps;
	i(9) <= '1';
	WAIT FOR 40000 ps;
	i(9) <= '0';
	WAIT FOR 160000 ps;
	i(9) <= '1';
	WAIT FOR 40000 ps;
	i(9) <= '0';
	WAIT FOR 40000 ps;
	i(9) <= '1';
WAIT;
END PROCESS t_prcs_i_9;
-- i[8]
t_prcs_i_8: PROCESS
BEGIN
	i(8) <= '1';
	WAIT FOR 200000 ps;
	i(8) <= '0';
	WAIT FOR 200000 ps;
	i(8) <= '1';
	WAIT FOR 80000 ps;
	i(8) <= '0';
	WAIT FOR 40000 ps;
	i(8) <= '1';
	WAIT FOR 120000 ps;
	i(8) <= '0';
	WAIT FOR 40000 ps;
	i(8) <= '1';
	WAIT FOR 120000 ps;
	i(8) <= '0';
	WAIT FOR 40000 ps;
	i(8) <= '1';
	WAIT FOR 40000 ps;
	i(8) <= '0';
WAIT;
END PROCESS t_prcs_i_8;
-- i[7]
t_prcs_i_7: PROCESS
BEGIN
	i(7) <= '0';
	WAIT FOR 120000 ps;
	i(7) <= '1';
	WAIT FOR 40000 ps;
	i(7) <= '0';
	WAIT FOR 160000 ps;
	i(7) <= '1';
	WAIT FOR 40000 ps;
	i(7) <= '0';
	WAIT FOR 40000 ps;
	i(7) <= '1';
	WAIT FOR 120000 ps;
	i(7) <= '0';
	WAIT FOR 80000 ps;
	i(7) <= '1';
	WAIT FOR 120000 ps;
	i(7) <= '0';
	WAIT FOR 40000 ps;
	i(7) <= '1';
	WAIT FOR 80000 ps;
	i(7) <= '0';
WAIT;
END PROCESS t_prcs_i_7;
-- i[6]
t_prcs_i_6: PROCESS
BEGIN
	i(6) <= '1';
	WAIT FOR 40000 ps;
	i(6) <= '0';
	WAIT FOR 40000 ps;
	i(6) <= '1';
	WAIT FOR 80000 ps;
	i(6) <= '0';
	WAIT FOR 80000 ps;
	i(6) <= '1';
	WAIT FOR 40000 ps;
	i(6) <= '0';
	WAIT FOR 120000 ps;
	i(6) <= '1';
	WAIT FOR 40000 ps;
	i(6) <= '0';
	WAIT FOR 120000 ps;
	i(6) <= '1';
	WAIT FOR 160000 ps;
	i(6) <= '0';
	WAIT FOR 120000 ps;
	i(6) <= '1';
	WAIT FOR 80000 ps;
	i(6) <= '0';
WAIT;
END PROCESS t_prcs_i_6;
-- i[5]
t_prcs_i_5: PROCESS
BEGIN
	i(5) <= '0';
	WAIT FOR 80000 ps;
	i(5) <= '1';
	WAIT FOR 80000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
	WAIT FOR 40000 ps;
	i(5) <= '0';
	WAIT FOR 120000 ps;
	i(5) <= '1';
	WAIT FOR 200000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
	WAIT FOR 40000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
	WAIT FOR 40000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
	WAIT FOR 40000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
	WAIT FOR 40000 ps;
	i(5) <= '0';
	WAIT FOR 40000 ps;
	i(5) <= '1';
WAIT;
END PROCESS t_prcs_i_5;
-- i[4]
t_prcs_i_4: PROCESS
BEGIN
	i(4) <= '1';
	WAIT FOR 40000 ps;
	i(4) <= '0';
	WAIT FOR 40000 ps;
	i(4) <= '1';
	WAIT FOR 160000 ps;
	i(4) <= '0';
	WAIT FOR 200000 ps;
	i(4) <= '1';
	WAIT FOR 40000 ps;
	i(4) <= '0';
	WAIT FOR 40000 ps;
	i(4) <= '1';
	WAIT FOR 40000 ps;
	i(4) <= '0';
	WAIT FOR 80000 ps;
	i(4) <= '1';
	WAIT FOR 160000 ps;
	i(4) <= '0';
	WAIT FOR 40000 ps;
	i(4) <= '1';
	WAIT FOR 40000 ps;
	i(4) <= '0';
	WAIT FOR 40000 ps;
	i(4) <= '1';
	WAIT FOR 40000 ps;
	i(4) <= '0';
WAIT;
END PROCESS t_prcs_i_4;
-- i[3]
t_prcs_i_3: PROCESS
BEGIN
	i(3) <= '1';
	WAIT FOR 80000 ps;
	i(3) <= '0';
	WAIT FOR 80000 ps;
	i(3) <= '1';
	WAIT FOR 240000 ps;
	i(3) <= '0';
	WAIT FOR 80000 ps;
	i(3) <= '1';
	WAIT FOR 80000 ps;
	i(3) <= '0';
	WAIT FOR 120000 ps;
	i(3) <= '1';
	WAIT FOR 40000 ps;
	i(3) <= '0';
	WAIT FOR 120000 ps;
	i(3) <= '1';
	WAIT FOR 40000 ps;
	i(3) <= '0';
	WAIT FOR 40000 ps;
	i(3) <= '1';
WAIT;
END PROCESS t_prcs_i_3;
-- i[2]
t_prcs_i_2: PROCESS
BEGIN
	i(2) <= '1';
	WAIT FOR 40000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 40000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 200000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 40000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 40000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 40000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 80000 ps;
	i(2) <= '0';
	WAIT FOR 40000 ps;
	i(2) <= '1';
	WAIT FOR 80000 ps;
	i(2) <= '0';
	WAIT FOR 120000 ps;
	i(2) <= '1';
WAIT;
END PROCESS t_prcs_i_2;
-- i[1]
t_prcs_i_1: PROCESS
BEGIN
	i(1) <= '0';
	WAIT FOR 120000 ps;
	i(1) <= '1';
	WAIT FOR 40000 ps;
	i(1) <= '0';
	WAIT FOR 40000 ps;
	i(1) <= '1';
	WAIT FOR 80000 ps;
	i(1) <= '0';
	WAIT FOR 40000 ps;
	i(1) <= '1';
	WAIT FOR 120000 ps;
	i(1) <= '0';
	WAIT FOR 80000 ps;
	i(1) <= '1';
	WAIT FOR 40000 ps;
	i(1) <= '0';
	WAIT FOR 40000 ps;
	i(1) <= '1';
	WAIT FOR 40000 ps;
	i(1) <= '0';
	WAIT FOR 40000 ps;
	i(1) <= '1';
	WAIT FOR 40000 ps;
	i(1) <= '0';
	WAIT FOR 40000 ps;
	i(1) <= '1';
	WAIT FOR 120000 ps;
	i(1) <= '0';
WAIT;
END PROCESS t_prcs_i_1;
-- i[0]
t_prcs_i_0: PROCESS
BEGIN
	i(0) <= '0';
	WAIT FOR 120000 ps;
	i(0) <= '1';
	WAIT FOR 120000 ps;
	i(0) <= '0';
	WAIT FOR 40000 ps;
	i(0) <= '1';
	WAIT FOR 120000 ps;
	i(0) <= '0';
	WAIT FOR 40000 ps;
	i(0) <= '1';
	WAIT FOR 40000 ps;
	i(0) <= '0';
	WAIT FOR 40000 ps;
	i(0) <= '1';
	WAIT FOR 200000 ps;
	i(0) <= '0';
	WAIT FOR 40000 ps;
	i(0) <= '1';
	WAIT FOR 120000 ps;
	i(0) <= '0';
	WAIT FOR 40000 ps;
	i(0) <= '1';
WAIT;
END PROCESS t_prcs_i_0;
-- s[3]
t_prcs_s_3: PROCESS
BEGIN
	s(3) <= '0';
	WAIT FOR 320000 ps;
	s(3) <= '1';
	WAIT FOR 320000 ps;
	s(3) <= '0';
	WAIT FOR 320000 ps;
	s(3) <= '1';
WAIT;
END PROCESS t_prcs_s_3;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		s(2) <= '0';
		WAIT FOR 160000 ps;
		s(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	s(2) <= '0';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		s(1) <= '0';
		WAIT FOR 80000 ps;
		s(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		s(0) <= '0';
		WAIT FOR 40000 ps;
		s(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END mux16to1_arch;
