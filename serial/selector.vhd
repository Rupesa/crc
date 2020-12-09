LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY selector IS
  PORT (count:      in std_logic_vector(3 downto 0);
        a_enabler: out std_logic_vector(7 downto 0));
END selector;

architecture structural of selector is

    signal r0as, r1as, r2as, r3as, r4as, r5as, r6as, r7as: std_logic_vector(15 downto 0);
    component decoder3to8
        port(x:  in STD_LOGIC_VECTOR (2 DOWNTO 0);
             y:  out STD_LOGIC_VECTOR (7 DOWNTO 0);
             en: in std_logic);
    end component;

    component mux16to1
        PORT (i16:     IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel16:  	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        f16:    	OUT STD_LOGIC);
    end component;

begin

    r7as <= "0100111111010100";
    r6as <= "0010011111101010";
    r5as <= "0001001111110101";
    r4as <= "0100011000101110";
    r3as <= "0010001100010111";
    r2as <= "1101111001011111";
    r1as <= "1010000011111011";
    r0as <= "1001111110101001";

    r0a_en : mux16to1 port map(r0as, count, a_enabler(0));
    r1a_en : mux16to1 port map(r1as, count, a_enabler(1));
    r2a_en : mux16to1 port map(r2as, count, a_enabler(2));
    r3a_en : mux16to1 port map(r3as, count, a_enabler(3));
    r4a_en : mux16to1 port map(r4as, count, a_enabler(4));
    r5a_en : mux16to1 port map(r5as, count, a_enabler(5));
    r6a_en : mux16to1 port map(r6as, count, a_enabler(6));
    r7a_en : mux16to1 port map(r7as, count, a_enabler(7));

    -- Another way: try something like a_enabler(x) = rxas(count)

end structural ;