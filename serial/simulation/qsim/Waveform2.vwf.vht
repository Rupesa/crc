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
-- Generated on "12/08/2020 22:15:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux8to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux8to1_vhd_vec_tst IS
END mux8to1_vhd_vec_tst;
ARCHITECTURE mux8to1_arch OF mux8to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f8 : STD_LOGIC;
SIGNAL i8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT mux8to1
	PORT (
	f8 : OUT STD_LOGIC;
	i8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux8to1
	PORT MAP (
-- list connections between master ports and signals
	f8 => f8,
	i8 => i8,
	sel8 => sel8
	);
-- i8[7]
t_prcs_i8_7: PROCESS
BEGIN
	i8(7) <= '0';
WAIT;
END PROCESS t_prcs_i8_7;
-- i8[6]
t_prcs_i8_6: PROCESS
BEGIN
	i8(6) <= '1';
WAIT;
END PROCESS t_prcs_i8_6;
-- i8[5]
t_prcs_i8_5: PROCESS
BEGIN
	i8(5) <= '0';
WAIT;
END PROCESS t_prcs_i8_5;
-- i8[4]
t_prcs_i8_4: PROCESS
BEGIN
	i8(4) <= '1';
WAIT;
END PROCESS t_prcs_i8_4;
-- i8[3]
t_prcs_i8_3: PROCESS
BEGIN
	i8(3) <= '0';
WAIT;
END PROCESS t_prcs_i8_3;
-- i8[2]
t_prcs_i8_2: PROCESS
BEGIN
	i8(2) <= '1';
WAIT;
END PROCESS t_prcs_i8_2;
-- i8[1]
t_prcs_i8_1: PROCESS
BEGIN
	i8(1) <= '0';
WAIT;
END PROCESS t_prcs_i8_1;
-- i8[0]
t_prcs_i8_0: PROCESS
BEGIN
	i8(0) <= '1';
WAIT;
END PROCESS t_prcs_i8_0;
-- sel8[2]
t_prcs_sel8_2: PROCESS
BEGIN
	sel8(2) <= '0';
	WAIT FOR 380000 ps;
	sel8(2) <= '1';
	WAIT FOR 500000 ps;
	sel8(2) <= '0';
WAIT;
END PROCESS t_prcs_sel8_2;
-- sel8[1]
t_prcs_sel8_1: PROCESS
BEGIN
	sel8(1) <= '0';
	WAIT FOR 180000 ps;
	sel8(1) <= '1';
	WAIT FOR 200000 ps;
	sel8(1) <= '0';
	WAIT FOR 260000 ps;
	sel8(1) <= '1';
	WAIT FOR 240000 ps;
	sel8(1) <= '0';
WAIT;
END PROCESS t_prcs_sel8_1;
-- sel8[0]
t_prcs_sel8_0: PROCESS
BEGIN
	sel8(0) <= '0';
	WAIT FOR 80000 ps;
	sel8(0) <= '1';
	WAIT FOR 100000 ps;
	sel8(0) <= '0';
	WAIT FOR 100000 ps;
	sel8(0) <= '1';
	WAIT FOR 100000 ps;
	sel8(0) <= '0';
	WAIT FOR 140000 ps;
	sel8(0) <= '1';
	WAIT FOR 120000 ps;
	sel8(0) <= '0';
	WAIT FOR 120000 ps;
	sel8(0) <= '1';
	WAIT FOR 120000 ps;
	sel8(0) <= '0';
WAIT;
END PROCESS t_prcs_sel8_0;
END mux8to1_arch;
