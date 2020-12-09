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
-- Generated on "12/09/2020 18:23:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder_semi_parallel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_semi_parallel_vhd_vec_tst IS
END encoder_semi_parallel_vhd_vec_tst;
ARCHITECTURE encoder_semi_parallel_arch OF encoder_semi_parallel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ended : STD_LOGIC;
SIGNAL nRst : STD_LOGIC;
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT encoder_semi_parallel
	PORT (
	a : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	ended : OUT STD_LOGIC;
	nRst : IN STD_LOGIC;
	r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoder_semi_parallel
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	clk => clk,
	ended => ended,
	nRst => nRst,
	r => r
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '1';
WAIT;
END PROCESS t_prcs_nRst;
END encoder_semi_parallel_arch;
