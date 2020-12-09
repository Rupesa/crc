LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY gateAnd3 IS
  PORT (x0, x1, x2:  IN STD_LOGIC;
        y:          OUT STD_LOGIC);
END gateAnd3;

architecture behavior of gateAnd3 is

begin

	 y <= x0 and x1 and x2;

end behavior;
