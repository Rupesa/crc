LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY comparador_8 IS
  PORT (r0: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        r1: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		  v: OUT STD_LOGIC);
END comparador_8;

ARCHITECTURE behavioural OF comparador_8 IS

SIGNAL y: unsigned(7 DOWNTO 0);
SIGNAL x0: std_logic;
SIGNAL x1: std_logic;
SIGNAL x2: std_logic;
SIGNAL x3: std_logic;
SIGNAL x4: std_logic;
SIGNAL x5: std_logic;
SIGNAL x6: std_logic;


BEGIN

  y(0) <= r0(0) XOR r1(0);
  y(1) <= r0(1) XOR r1(1);
  y(2) <= r0(2) XOR r1(2);
  y(3) <= r0(3) XOR r1(3);
  y(4) <= r0(4) XOR r1(4);
  y(5) <= r0(5) XOR r1(5);
  y(6) <= r0(6) XOR r1(6);
  y(7) <= r0(7) XOR r1(7);
  
  x0 <= y(0) OR y(1);
  x1 <= y(2) OR y(3);
  x2 <= y(4) OR y(5);
  x3 <= y(6) OR y(7);
  x4 <= x0 OR x1;
  x5 <= x2 OR x3;
  x6 <= x4 OR x5;
    
  v <= x6;
END behavioural;