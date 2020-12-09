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
-- Generated on "12/07/2020 14:04:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gateAnd2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gateAnd2_vhd_vec_tst IS
END gateAnd2_vhd_vec_tst;
ARCHITECTURE gateAnd2_arch OF gateAnd2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT gateAnd2
	PORT (
	x1 : IN STD_LOGIC;
	x2 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gateAnd2
	PORT MAP (
-- list connections between master ports and signals
	x1 => x1,
	x2 => x2,
	y => y
	);

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 530000 ps;
	x1 <= '1';
	WAIT FOR 460000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;

-- x2
t_prcs_x2: PROCESS
BEGIN
	x2 <= '0';
	WAIT FOR 270000 ps;
	x2 <= '1';
	WAIT FOR 230000 ps;
	x2 <= '0';
	WAIT FOR 330000 ps;
	x2 <= '1';
	WAIT FOR 140000 ps;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;
END gateAnd2_arch;
