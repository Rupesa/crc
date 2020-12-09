LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux4to1 IS
  PORT (i:     IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        sel:  	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        f:    	OUT STD_LOGIC);
END mux4to1;

architecture structural of mux4to1 is
	
	signal y1 : std_logic;
	signal y2 : std_logic;

	COMPONENT mux2to1
    PORT (s:  IN STD_LOGIC;
          a, b:  IN STD_LOGIC;
          o: OUT STD_LOGIC);
	END COMPONENT;

begin
    res1  : mux2to1 PORT MAP(s=>sel(0), a=>i(0), b=>i(1), o=>y1);
	 res2  : mux2to1 PORT MAP(s=>sel(0), a=>i(2), b=>i(3), o=>y2);
	 final  : mux2to1 PORT MAP(s=>sel(1), a=>y1, b=>y2, o=>f);
end structural;