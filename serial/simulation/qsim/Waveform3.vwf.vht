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
-- Generated on "12/08/2020 22:44:20"
                                                             
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
SIGNAL f16 : STD_LOGIC;
SIGNAL i16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sel16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux16to1
	PORT (
	f16 : OUT STD_LOGIC;
	i16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel16 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux16to1
	PORT MAP (
-- list connections between master ports and signals
	f16 => f16,
	i16 => i16,
	sel16 => sel16
	);
-- i16[15]
t_prcs_i16_15: PROCESS
BEGIN
	i16(15) <= '1';
WAIT;
END PROCESS t_prcs_i16_15;
-- i16[14]
t_prcs_i16_14: PROCESS
BEGIN
	i16(14) <= '0';
WAIT;
END PROCESS t_prcs_i16_14;
-- i16[13]
t_prcs_i16_13: PROCESS
BEGIN
	i16(13) <= '0';
WAIT;
END PROCESS t_prcs_i16_13;
-- i16[12]
t_prcs_i16_12: PROCESS
BEGIN
	i16(12) <= '0';
WAIT;
END PROCESS t_prcs_i16_12;
-- i16[11]
t_prcs_i16_11: PROCESS
BEGIN
	i16(11) <= '0';
WAIT;
END PROCESS t_prcs_i16_11;
-- i16[10]
t_prcs_i16_10: PROCESS
BEGIN
	i16(10) <= '1';
WAIT;
END PROCESS t_prcs_i16_10;
-- i16[9]
t_prcs_i16_9: PROCESS
BEGIN
	i16(9) <= '1';
WAIT;
END PROCESS t_prcs_i16_9;
-- i16[8]
t_prcs_i16_8: PROCESS
BEGIN
	i16(8) <= '1';
WAIT;
END PROCESS t_prcs_i16_8;
-- i16[7]
t_prcs_i16_7: PROCESS
BEGIN
	i16(7) <= '1';
WAIT;
END PROCESS t_prcs_i16_7;
-- i16[6]
t_prcs_i16_6: PROCESS
BEGIN
	i16(6) <= '0';
WAIT;
END PROCESS t_prcs_i16_6;
-- i16[5]
t_prcs_i16_5: PROCESS
BEGIN
	i16(5) <= '0';
WAIT;
END PROCESS t_prcs_i16_5;
-- i16[4]
t_prcs_i16_4: PROCESS
BEGIN
	i16(4) <= '0';
WAIT;
END PROCESS t_prcs_i16_4;
-- i16[3]
t_prcs_i16_3: PROCESS
BEGIN
	i16(3) <= '0';
WAIT;
END PROCESS t_prcs_i16_3;
-- i16[2]
t_prcs_i16_2: PROCESS
BEGIN
	i16(2) <= '0';
WAIT;
END PROCESS t_prcs_i16_2;
-- i16[1]
t_prcs_i16_1: PROCESS
BEGIN
	i16(1) <= '0';
WAIT;
END PROCESS t_prcs_i16_1;
-- i16[0]
t_prcs_i16_0: PROCESS
BEGIN
	i16(0) <= '0';
WAIT;
END PROCESS t_prcs_i16_0;
-- sel16[3]
t_prcs_sel16_3: PROCESS
BEGIN
	sel16(3) <= '0';
	WAIT FOR 480000 ps;
	sel16(3) <= '1';
	WAIT FOR 480000 ps;
	sel16(3) <= '0';
WAIT;
END PROCESS t_prcs_sel16_3;
-- sel16[2]
t_prcs_sel16_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		sel16(2) <= '0';
		WAIT FOR 240000 ps;
		sel16(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	sel16(2) <= '0';
WAIT;
END PROCESS t_prcs_sel16_2;
-- sel16[1]
t_prcs_sel16_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		sel16(1) <= '0';
		WAIT FOR 120000 ps;
		sel16(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	sel16(1) <= '0';
WAIT;
END PROCESS t_prcs_sel16_1;
-- sel16[0]
t_prcs_sel16_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		sel16(0) <= '0';
		WAIT FOR 60000 ps;
		sel16(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	sel16(0) <= '0';
WAIT;
END PROCESS t_prcs_sel16_0;
END mux16to1_arch;
