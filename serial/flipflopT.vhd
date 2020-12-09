LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopT IS
  PORT (clk, T: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
END flipFlopT;

architecture structural of flipFlopT is
	
	signal and0 : std_logic;
	signal and1 : std_logic;
	signal s : std_logic := '0';
	signal ns : std_logic := '1';

	COMPONENT gateAnd3
    PORT (x0, x1, x2:  IN STD_LOGIC;
        y:          OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateNOr2
    PORT (x1, x2:  IN STD_LOGIC;
        y:              OUT STD_LOGIC);
	END COMPONENT;

begin
    andd  : gateAnd3 PORT MAP(x0=>clk, x1=>T, x2=>s, y=>and0);
	 andd1 : gateAnd3 PORT MAP(x0=>clk, x1=>T, x2=>ns, y=>and1);
	 norr  : gateNOr2 PORT MAP(x1=>and0, x2=>ns, y=>s);
	 norr1 : gateNOr2 PORT MAP(x1=>and1, x2=>s, y=>ns);
	 
	 Q <= s;
	 nQ <= ns;
end structural;
