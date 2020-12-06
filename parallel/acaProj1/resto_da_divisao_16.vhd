LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY resto_da_divisao_16 IS
  PORT (a: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END resto_da_divisao_16;

ARCHITECTURE behavioural OF resto_da_divisao_16 IS

SIGNAL r: unsigned(7 DOWNTO 0);
SIGNAL s0_4: std_logic;
SIGNAL s2_9: std_logic;
SIGNAL s6_7: std_logic;
SIGNAL s5_8: std_logic;
SIGNAL s1_3: std_logic;
SIGNAL s9_10: std_logic;
SIGNAL s10_11: std_logic;
SIGNAL s6_14: std_logic;
SIGNAL s4_7: std_logic;
SIGNAL s0_3: std_logic;
SIGNAL s12_15: std_logic;
SIGNAL s7_9: std_logic;
SIGNAL s5_13: std_logic;
SIGNAL s1_8: std_logic;
SIGNAL s5_10: std_logic;
SIGNAL s10_11_12_15: std_logic;
SIGNAL s0_4_2_9: std_logic;
SIGNAL s6_7_5_8: std_logic;

BEGIN
	
	s0_4 <= a(0) XOR a(4);
	s2_9 <= a(2) XOR a(9);
	s6_7 <= a(6) XOR a(7);
	s5_8 <= a(5) XOR a(8);
	s1_3 <= a(1) XOR a(3);
	s9_10 <= a(9) XOR a(10);
	s10_11 <= a(10) XOR a(11);
	s6_14 <= a(6) XOR a(14);
	s4_7 <= a(4) XOR a(7);
	s0_3 <= a(0) XOR a(3);
	s12_15 <= a(12) XOR a(15);
	s7_9 <= a(7) XOR a(9);
	s5_13 <= a(5) XOR a(13);
	s1_8 <= a(1) XOR a(8);
	s5_10 <= a(5) XOR a(10);
	s10_11_12_15 <= s10_11 XOR s12_15;
	s0_4_2_9 <= s0_4 XOR s2_9;
	s6_7_5_8 <= s6_7 XOR s5_8;
	
	r(0) <= s5_8 XOR s0_3 XOR s10_11_12_15 XOR s7_9;
	r(1) <= s0_4 XOR s6_7 XOR s1_3 XOR s5_13 XOR a(15); 
	r(2) <= s0_4_2_9 XOR s10_11_12_15 XOR s1_3 XOR s6_14;
	r(3) <= s0_4_2_9 XOR s1_8 XOR a(13);
	r(4) <= s1_3 XOR s2_9 XOR s5_10 XOR a(14);
	r(5) <= s0_4_2_9 XOR s6_7_5_8 XOR a(12);
	r(6) <= s1_3 XOR s6_7_5_8 XOR s9_10 XOR a(13);
	r(7) <= s2_9 XOR s10_11 XOR s6_14 XOR s4_7 XOR a(8);
	


  
  s <= std_logic_vector(r);
  
END behavioural;