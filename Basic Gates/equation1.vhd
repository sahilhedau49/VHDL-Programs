Library IEEE;
use IEEE.std_logic_1164.all;
entity eqn1 is
	port(A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		lhs: out std_logic;
		rhs: out std_logic;
		bynand: out std_logic;
		bynor: out std_logic);
end eqn1;
architecture boollogic of eqn1 is
begin
	lhs <= (A AND B) OR (A AND (NOT(B)) AND C) OR (B AND (NOT(C))) ;
	rhs <= (B AND (NOT(C))) OR (A AND C) ;
	bynand <= (B NAND (C NAND C)) NAND (A NAND C) ;
end boollogic;
