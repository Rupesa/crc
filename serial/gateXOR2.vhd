LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOR2;

ARCHITECTURE behavior OF gateXOR2 IS
BEGIN

    y <= x1 XOR x2;

END behavior;