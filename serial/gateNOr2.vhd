LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY gateNOr2 IS
  PORT (x1, x2:  IN STD_LOGIC;
        y:              OUT STD_LOGIC);
END gateNOr2;

architecture behavior of gateNOr2 is

begin

	 y <= not x1 and not x2;

end behavior;
