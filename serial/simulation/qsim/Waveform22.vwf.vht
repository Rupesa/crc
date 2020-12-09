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
-- Generated on "12/09/2020 18:32:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          rserializer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rserializer_vhd_vec_tst IS
END rserializer_vhd_vec_tst;
ARCHITECTURE rserializer_arch OF rserializer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL nRst : STD_LOGIC;
SIGNAL rpar : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rser : STD_LOGIC;
COMPONENT rserializer
	PORT (
	clk : IN STD_LOGIC;
	nRst : IN STD_LOGIC;
	rpar : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	rser : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : rserializer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	nRst => nRst,
	rpar => rpar,
	rser => rser
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
-- rpar[7]
t_prcs_rpar_7: PROCESS
BEGIN
	rpar(7) <= '0';
WAIT;
END PROCESS t_prcs_rpar_7;
-- rpar[6]
t_prcs_rpar_6: PROCESS
BEGIN
	rpar(6) <= '1';
WAIT;
END PROCESS t_prcs_rpar_6;
-- rpar[5]
t_prcs_rpar_5: PROCESS
BEGIN
	rpar(5) <= '1';
WAIT;
END PROCESS t_prcs_rpar_5;
-- rpar[4]
t_prcs_rpar_4: PROCESS
BEGIN
	rpar(4) <= '0';
WAIT;
END PROCESS t_prcs_rpar_4;
-- rpar[3]
t_prcs_rpar_3: PROCESS
BEGIN
	rpar(3) <= '0';
WAIT;
END PROCESS t_prcs_rpar_3;
-- rpar[2]
t_prcs_rpar_2: PROCESS
BEGIN
	rpar(2) <= '1';
WAIT;
END PROCESS t_prcs_rpar_2;
-- rpar[1]
t_prcs_rpar_1: PROCESS
BEGIN
	rpar(1) <= '0';
WAIT;
END PROCESS t_prcs_rpar_1;
-- rpar[0]
t_prcs_rpar_0: PROCESS
BEGIN
	rpar(0) <= '0';
WAIT;
END PROCESS t_prcs_rpar_0;
END rserializer_arch;
