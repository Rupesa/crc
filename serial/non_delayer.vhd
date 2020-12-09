LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY non_delayer IS
  PORT (nRst, T, clk: IN STD_LOGIC;
        s:  OUT STD_LOGIC);
END non_delayer;

ARCHITECTURE structure OF non_delayer IS

	 signal ff : std_logic;
  
  COMPONENT flipflopT
    PORT (clk, T: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT gateXOR2
    PORT (x1, x2:  IN STD_LOGIC;
        y:              OUT STD_LOGIC);
	END COMPONENT;

BEGIN

   ff0  : flipflopT PORT MAP(clk=>clk, T=>T, nRst=>nRst, Q=>ff);
	s <= ff OR T;
  
END structure;