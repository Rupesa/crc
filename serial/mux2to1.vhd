LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux2to1 IS
  PORT (s:     IN STD_LOGIC;
        a, b:  IN STD_LOGIC;
        o:    OUT STD_LOGIC);
END mux2to1;

architecture behavior of mux2to1 is
signal not_s: STD_LOGIC;
signal and1 : STD_LOGIC;
signal and2 : STD_LOGIC;

begin
    not_s <= NOT s;
	 and1 <= not_s AND a;
	 and2 <= s AND b;
	 o <= and1 OR and2; 
end behavior;