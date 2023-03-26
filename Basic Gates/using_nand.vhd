Library IEEE;
use IEEE.std_logic_1164.all;
entity usingnad is
	port(X,Y: in std_logic;
		A,O,N,EO,EN: out std_logic);
end usingnad;
architecture boollogic of usingnad is
begin
	A <= (X nand Y) nand (X nand Y);
	O <= (X nand X) nand (Y nand Y);
	N <=  (X nand X);
	EO <=  ((X nand X) nand Y) nand ((Y nand Y) nand X);
	EN <=  ((X nand X) nand (Y  nand Y)) nand (X nand Y) ;
end boollogic;
