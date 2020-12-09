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
-- Generated on "12/08/2020 21:38:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4to1_vhd_vec_tst IS
END mux4to1_vhd_vec_tst;
ARCHITECTURE mux4to1_arch OF mux4to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux4to1
	PORT (
	f : OUT STD_LOGIC;
	i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux4to1
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	i => i,
	sel => sel
	);
-- i[3]
t_prcs_i_3: PROCESS
BEGIN
	i(3) <= '1';
WAIT;
END PROCESS t_prcs_i_3;
-- i[2]
t_prcs_i_2: PROCESS
BEGIN
	i(2) <= '0';
WAIT;
END PROCESS t_prcs_i_2;
-- i[1]
t_prcs_i_1: PROCESS
BEGIN
	i(1) <= '1';
WAIT;
END PROCESS t_prcs_i_1;
-- i[0]
t_prcs_i_0: PROCESS
BEGIN
	i(0) <= '0';
WAIT;
END PROCESS t_prcs_i_0;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '1';
	WAIT FOR 480000 ps;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '1';
	WAIT FOR 300000 ps;
	sel(0) <= '0';
	WAIT FOR 180000 ps;
	sel(0) <= '1';
	WAIT FOR 200000 ps;
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END mux4to1_arch;
