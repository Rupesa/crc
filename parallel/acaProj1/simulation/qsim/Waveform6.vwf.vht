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
-- Generated on "12/09/2020 20:53:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          checker_24_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY checker_24_1_vhd_vec_tst IS
END checker_24_1_vhd_vec_tst;
ARCHITECTURE checker_24_1_arch OF checker_24_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a0 : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL s0 : STD_LOGIC;
COMPONENT checker_24_1
	PORT (
	a0 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	s0 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : checker_24_1
	PORT MAP (
-- list connections between master ports and signals
	a0 => a0,
	s0 => s0
	);
-- a0[23]
t_prcs_a0_23: PROCESS
BEGIN
	a0(23) <= '1';
WAIT;
END PROCESS t_prcs_a0_23;
-- a0[22]
t_prcs_a0_22: PROCESS
BEGIN
	a0(22) <= '1';
WAIT;
END PROCESS t_prcs_a0_22;
-- a0[21]
t_prcs_a0_21: PROCESS
BEGIN
	a0(21) <= '1';
WAIT;
END PROCESS t_prcs_a0_21;
-- a0[20]
t_prcs_a0_20: PROCESS
BEGIN
	a0(20) <= '1';
WAIT;
END PROCESS t_prcs_a0_20;
-- a0[19]
t_prcs_a0_19: PROCESS
BEGIN
	a0(19) <= '1';
WAIT;
END PROCESS t_prcs_a0_19;
-- a0[18]
t_prcs_a0_18: PROCESS
BEGIN
	a0(18) <= '1';
WAIT;
END PROCESS t_prcs_a0_18;
-- a0[17]
t_prcs_a0_17: PROCESS
BEGIN
	a0(17) <= '1';
WAIT;
END PROCESS t_prcs_a0_17;
-- a0[16]
t_prcs_a0_16: PROCESS
BEGIN
	a0(16) <= '1';
WAIT;
END PROCESS t_prcs_a0_16;
-- a0[15]
t_prcs_a0_15: PROCESS
BEGIN
	a0(15) <= '1';
WAIT;
END PROCESS t_prcs_a0_15;
-- a0[14]
t_prcs_a0_14: PROCESS
BEGIN
	a0(14) <= '1';
WAIT;
END PROCESS t_prcs_a0_14;
-- a0[13]
t_prcs_a0_13: PROCESS
BEGIN
	a0(13) <= '1';
WAIT;
END PROCESS t_prcs_a0_13;
-- a0[12]
t_prcs_a0_12: PROCESS
BEGIN
	a0(12) <= '1';
WAIT;
END PROCESS t_prcs_a0_12;
-- a0[11]
t_prcs_a0_11: PROCESS
BEGIN
	a0(11) <= '1';
WAIT;
END PROCESS t_prcs_a0_11;
-- a0[10]
t_prcs_a0_10: PROCESS
BEGIN
	a0(10) <= '1';
WAIT;
END PROCESS t_prcs_a0_10;
-- a0[9]
t_prcs_a0_9: PROCESS
BEGIN
	a0(9) <= '1';
WAIT;
END PROCESS t_prcs_a0_9;
-- a0[8]
t_prcs_a0_8: PROCESS
BEGIN
	a0(8) <= '1';
WAIT;
END PROCESS t_prcs_a0_8;
-- a0[7]
t_prcs_a0_7: PROCESS
BEGIN
	a0(7) <= '1';
WAIT;
END PROCESS t_prcs_a0_7;
-- a0[6]
t_prcs_a0_6: PROCESS
BEGIN
	a0(6) <= '1';
WAIT;
END PROCESS t_prcs_a0_6;
-- a0[5]
t_prcs_a0_5: PROCESS
BEGIN
	a0(5) <= '1';
WAIT;
END PROCESS t_prcs_a0_5;
-- a0[4]
t_prcs_a0_4: PROCESS
BEGIN
	a0(4) <= '1';
WAIT;
END PROCESS t_prcs_a0_4;
-- a0[3]
t_prcs_a0_3: PROCESS
BEGIN
	a0(3) <= '1';
WAIT;
END PROCESS t_prcs_a0_3;
-- a0[2]
t_prcs_a0_2: PROCESS
BEGIN
	a0(2) <= '0';
WAIT;
END PROCESS t_prcs_a0_2;
-- a0[1]
t_prcs_a0_1: PROCESS
BEGIN
	a0(1) <= '1';
WAIT;
END PROCESS t_prcs_a0_1;
-- a0[0]
t_prcs_a0_0: PROCESS
BEGIN
	a0(0) <= '0';
WAIT;
END PROCESS t_prcs_a0_0;
END checker_24_1_arch;
