LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY encoder_16_24 IS
  PORT (a0:  IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        s0:  OUT STD_LOGIC_VECTOR (23 DOWNTO 0));
END encoder_16_24;

ARCHITECTURE structure OF encoder_16_24 IS
  SIGNAL r: std_logic_vector(7 DOWNTO 0);
  COMPONENT resto_da_divisao_16
    PORT (a: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
          s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
  END COMPONENT;
  COMPONENT adicionar_ultimos_bits_16_8_24
    PORT (a1: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			 r1: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          s1: OUT STD_LOGIC_VECTOR (23 DOWNTO 0));
  END COMPONENT;
BEGIN
  resto: resto_da_divisao_16 PORT MAP (a0, r);
  saida: adicionar_ultimos_bits_16_8_24 PORT MAP (a0, r, s0);
END structure;