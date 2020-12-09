LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reverse_counter_15_0 IS
  PORT (clk: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        count: OUT STD_LOGIC_VECTOR(3 downto 0));
END reverse_counter_15_0;

architecture structural of reverse_counter_15_0 is
	
	signal Q0 : std_logic;
	signal nQ0 : std_logic;
	signal Q1 : std_logic;
	signal nQ1 : std_logic;
	signal and0 : std_logic;
	signal Q2 : std_logic;
	signal nQ2 : std_logic;
	signal and1 : std_logic;
	signal Q3 : std_logic;

	COMPONENT flipflopT
    PORT (clk, T: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateAnd2
    PORT (x1, x2: IN STD_LOGIC;
        y: OUT STD_LOGIC);
	END COMPONENT;

begin
    ff0  : flipflopT PORT MAP(clk=>clk, T=>'1', nRst=>nRst, Q=>Q0, nQ=>nQ0);
	 ff1  : flipflopT PORT MAP(clk=>clk, T=>nQ0, nRst=>nRst, Q=>Q1, nQ=>nQ1);
	 andd : gateAnd2 PORT MAP(x1=>nQ0, x2=>nQ1, y=>and0);
	 ff2  : flipflopT PORT MAP(clk=>clk, T=>and0, nRst=>nRst, Q=>Q2, nQ=>nQ2);
	 andd2 : gateAnd2 PORT MAP(x1=>nQ2, x2=>and0, y=>and1);
	 ff3  : flipflopT PORT MAP(clk=>clk, T=>and1, nRst=>nRst, Q=>Q3);
	 
	 count(3)<=Q3;
	 count(2)<=Q2;
	 count(1)<=Q1;
	 count(0)<=Q0;
	 
end structural;
