LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY checker_24_1 IS
  PORT (a0:  IN STD_LOGIC_VECTOR (23 DOWNTO 0);
        s0:  OUT STD_LOGIC);
END checker_24_1;

ARCHITECTURE structure OF checker_24_1 IS
  SIGNAL r: std_logic_vector(7 DOWNTO 0);
  COMPONENT resto_da_divisao_16
    PORT (a: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
          s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
  END COMPONENT;
  COMPONENT comparador_8
    PORT (r0: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			 r1: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          v: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  resto: resto_da_divisao_16 PORT MAP (a0(23 DOWNTO 8), r);
  saida: comparador_8 PORT MAP (a0(7 DOWNTO 0), r, s0);
END structure;