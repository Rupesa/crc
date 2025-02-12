LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY rserializer IS
  PORT (nRst, clk: IN STD_LOGIC;
        rpar:  IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        rser:  OUT STD_LOGIC);
END rserializer;

ARCHITECTURE structure OF rserializer IS

    signal s_count: std_logic_vector(2 downto 0);
    --signal s_r    : std_logic;

  COMPONENT flipflopD
    PORT (clk, nRst: IN STD_LOGIC;
          D:         IN STD_LOGIC;
          Q: OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT mux8to1
    PORT (i8:     IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        sel8:  	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        f8:    	OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT reverse_counter_7_0
    PORT (clk, nRst: in std_logic;
            count: out std_logic_vector(2 downto 0));
  END COMPONENT;

BEGIN

  counter: reverse_counter_7_0 PORT MAP (clk=>clk, nRst=>nRst, count=>s_count);
  mux: mux8to1 PORT MAP (i8=>rpar, sel8=>s_count, f8=>rser);
  --ffd: flipflopD PORT MAP(clk=>clk, nRst=>nRst, D=>s_r, Q=>rser);
  
END structure;