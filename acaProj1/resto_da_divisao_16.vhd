LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY resto_da_divisao_16 IS
  PORT (a: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END resto_da_divisao_16;

ARCHITECTURE behavioural OF resto_da_divisao_16 IS

SIGNAL r: unsigned(7 DOWNTO 0);

BEGIN

  r(0) <= a(0) XOR a(3) XOR a(5) XOR a(7) XOR a(8) XOR a(9) XOR a(10) XOR a(11) XOR a(12) XOR a(15);
  r(1) <= a(0) XOR a(1) XOR a(3) XOR a(4) XOR a(5) XOR a(6) XOR a(7) XOR a(13) XOR a(15);
  r(2) <= a(0) XOR a(1) XOR a(2) XOR a(3) XOR a(4) XOR a(6) XOR a(9) XOR a(10) XOR a(11) XOR a(12) XOR a(14) XOR a(15);
  r(3) <= a(0) XOR a(1) XOR a(2) XOR a(4) XOR a(8) XOR a(9) XOR a(13);
  r(4) <= a(1) XOR a(2) XOR a(3) XOR a(5) XOR a(9) XOR a(10) XOR a(14);
  r(5) <= a(0) XOR a(2) XOR a(4) XOR a(5) XOR a(6) XOR a(7) XOR a(8) XOR a(9) XOR a(12);
  r(6) <= a(1) XOR a(3) XOR a(5) XOR a(6) XOR a(7) XOR a(8) XOR a(9) XOR a(10) XOR a(13);
  r(7) <= a(2) XOR a(4) XOR a(6) XOR a(7) XOR a(8) XOR a(9) XOR a(10) XOR a(11) XOR a(14);
  
  s <= std_logic_vector(r);
  
END behavioural;