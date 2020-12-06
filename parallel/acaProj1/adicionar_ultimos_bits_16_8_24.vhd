LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY adicionar_ultimos_bits_16_8_24 IS
  PORT (a1: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		  r1: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        s1: OUT STD_LOGIC_VECTOR (23 DOWNTO 0));
END adicionar_ultimos_bits_16_8_24;

ARCHITECTURE behavioural OF adicionar_ultimos_bits_16_8_24 IS

BEGIN
  s1 <= a1 & r1;
END behavioural;