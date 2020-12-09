LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux16to1 IS
  PORT (i16:     IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel16:  	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        f16:    	OUT STD_LOGIC);
END mux16to1;

architecture structural of mux16to1 is
	
	signal y1 : std_logic;
	signal y2 : std_logic;

	COMPONENT mux2to1
    PORT (s:  IN STD_LOGIC;
          a, b:  IN STD_LOGIC;
          o: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mux8to1
    PORT (i8:     IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        sel8:  	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        f8:    	OUT STD_LOGIC);
	END COMPONENT;

begin
    res1  : mux8to1 PORT MAP(i8=>i16(7 downto 0), sel8=>sel16(2 downto 0), f8=>y1);
	 res2  : mux8to1 PORT MAP(i8=>i16(15 downto 8), sel8=>sel16(2 downto 0), f8=>y2);
	 final  : mux2to1 PORT MAP(s=>sel16(3), a=>y1, b=>y2, o=>f16);
end structural;