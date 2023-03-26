Library IEEE;
use IEEE.std_logic_1164.all;
entity eqn2 is
	port(A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		lhs: out std_logic;
		rhs: out std_logic;
		bynand: out std_logic);
end eqn2;
architecture boollogic of eqn2 is
begin
	lhs <= ((A AND B AND C) OR (NOT A) OR (A AND (NOT B) AND C)) ;
	rhs <= ((NOT A) OR C) ;
	bynand <= (A NAND (C NAND C)) ;
end boollogic;