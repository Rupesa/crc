LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reverse_counter_7_0 IS
  PORT (clk: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        count: OUT STD_LOGIC_VECTOR(2 downto 0));
END reverse_counter_7_0;

architecture structural of reverse_counter_7_0 is
	
	signal Q0 : std_logic;
	signal nQ0 : std_logic;
	signal Q1 : std_logic;
	signal nQ1 : std_logic;
	signal and0 : std_logic;
	signal Q2 : std_logic;

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
	 ff2  : flipflopT PORT MAP(clk=>clk, T=>and0, nRst=>nRst, Q=>Q2);
	 count(2)<=Q2;
	 count(1)<=Q1;
	 count(0)<=Q0;
	 
end structural;