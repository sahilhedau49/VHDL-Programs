Library IEEE;
use IEEE.std_logic_1164.all;
entity bcdtoexcess3 is
	port(B0: in std_logic;
		B1: in std_logic;
		B2: in std_logic;
		B3: in std_logic;
		E0: out std_logic;
		E1: out std_logic;
		E2: out std_logic;
		E3: out std_logic);
end bcdtoexcess3;
architecture logic of bcdtoexcess3 is
begin
	E0 <= not B0 ;
	E1 <= ( (not B1) and (not B0) ) or ( B1 and B0 ) ;
	E2 <= ( (not B2) and (B0 or B1) ) or ( b2 and (not B1) and (not B0) ) ;
	E3 <= B3 or ( B2 and B1 ) or ( B2 and B0 );
end logic;