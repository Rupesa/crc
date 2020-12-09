LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux8to1 IS
  PORT (i8:     IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        sel8:  	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        f8:    	OUT STD_LOGIC);
END mux8to1;

architecture structural of mux8to1 is
	
	signal y1 : std_logic;
	signal y2 : std_logic;

	COMPONENT mux2to1
    PORT (s:  IN STD_LOGIC;
          a, b:  IN STD_LOGIC;
          o: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mux4to1
    PORT (i:     IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 sel:  	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 f:    	OUT STD_LOGIC);
	END COMPONENT;

begin
    res1  : mux4to1 PORT MAP(i=>i8(3 downto 0), sel=>sel8(1 downto 0), f=>y1);
	 res2  : mux4to1 PORT MAP(i=>i8(7 downto 4), sel=>sel8(1 downto 0), f=>y2);
	 final  : mux2to1 PORT MAP(s=>sel8(2), a=>y1, b=>y2, o=>f8);
end structural;