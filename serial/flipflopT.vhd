LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopT IS
  PORT (clk, T: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
END flipFlopT;

architecture structural of flipFlopT is
	
	signal xor0 : std_logic;
	signal s : std_logic := '0';

	COMPONENT flipflopD
    PORT (clk, D: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateXOR2
    PORT (x1, x2:  IN STD_LOGIC;
        y:              OUT STD_LOGIC);
	END COMPONENT;

begin
	 xorr  : gateXOR2 PORT MAP(x1=>s, x2=>T, y=>xor0);
	 andd1 : flipflopD PORT MAP(clk=>clk, D=>xor0, nRst=>nRst, Q=>s);
	 
	 Q <= s;
	 nQ <= NOT s;
end structural;
