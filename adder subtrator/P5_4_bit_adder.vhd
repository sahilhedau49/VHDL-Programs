library IEEE;
use IEEE.std_logic_1164.all;
entity four_bit_adder is
	port(A,B: in std_logic_vector(3 downto 0);
	     Cin: in std_logic;
	     S: out std_logic_vector(4 downto 0));
end four_bit_adder;

architecture full_adder_logic of four_bit_adder is

component full_adder
	port(A,B,cin : in std_logic;
	     sum,cout : out std_logic);
end component;

signal C: std_logic_vector(3 downto 0);
begin
	C(0) <= Cin;
	FA0: full_adder port map(A(0),B(0),C(0),S(0),C(1));
	FA1: full_adder port map(A(1),B(1),C(1),S(1),C(2));
	FA2: full_adder port map(A(2),B(2),C(2),S(2),C(3));
	FA3: full_adder port map(A(3),B(3),C(3),S(3),S(4));
end full_adder_logic;