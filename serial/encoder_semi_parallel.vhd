LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY encoder_semi_parallel IS
  PORT (nRst, clk:   IN STD_LOGIC;
        a:           IN STD_LOGIC;
        r:			OUT STD_LOGIC_VECTOR(7 downto 0); 
		  ended:   OUT STD_LOGIC);
END encoder_semi_parallel;

ARCHITECTURE structure OF encoder_semi_parallel IS

	 signal s_ended2, s_ended3, s_ended4: std_logic;
    signal a_index:     std_logic_vector(3 downto 0);
    signal selected_as: std_logic_vector(7 downto 0);
	 signal s_ended: std_logic;
	 signal n_ended : std_logic := '1';
	 signal s_a : std_logic;

  COMPONENT ai_divider
    PORT (  nrst:        in std_logic;
            index:       in std_logic_vector(3 downto 0);
            ai:          in std_logic;
            a_relevance: out std_logic_vector(7 downto 0));
  END COMPONENT;

  COMPONENT xfo
    PORT (   nrst, clk: IN STD_LOGIC;
                    a:  IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                    r:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
  END COMPONENT;

  COMPONENT reverse_counter_15_0
    PORT (  clk:    IN STD_LOGIC;
            nrst:   IN STD_LOGIC;
            count: OUT STD_LOGIC_VECTOR(3 downto 0));
  END COMPONENT;

  COMPONENT gateNOr4
    PORT (  x1, x2, x3, x4:  IN STD_LOGIC;
            y:               OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT flipFlopD
  PORT (clk, D: IN STD_LOGIC;
        nRst: IN STD_LOGIC;
        Q: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT non_delayer
	PORT (nRst, T, clk: IN STD_LOGIC;
        s:  OUT STD_LOGIC);
  END COMPONENT;

BEGIN
	
	n_ended <= not s_ended4;
	s_a <= n_ended and a;
  counter: reverse_counter_15_0 PORT MAP (clk=>clk, nrst=>nRst, count=>a_index);
  ai_div : ai_divider PORT MAP(nrst=>nRst, index=>a_index, ai=>s_a, a_relevance=>selected_as);
  xors   : xfo PORT MAP(nrst=>nRst, clk=>clk, a=>selected_as, r=>r);
  final1  : gateNOr4 PORT MAP(x1=>a_index(0), x2=>a_index(1), x3=>a_index(2), x4=>a_index(3), y=>s_ended);
  final2 : flipflopD PORT MAP(clk=>clk, nRst=>nRst, D=>s_ended, Q=>s_ended2);
  --final3 : flipflopD PORT MAP(clk=>clk, nRst=>nRst, D=>s_ended2, Q=>s_ended3);
  nd     : non_delayer PORT MAP (clk=>clk, T=>s_ended2, nRst=>nRst, s=>s_ended4);
  ended <= s_ended4;
  
END structure;