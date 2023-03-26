Library IEEE;
use IEEE.std_logic_1164.all;

entity prac_fa is
	port(a,b,cin: in std_logic;
		sum, cout: out std_logic);
end prac_fa;

architecture logic of prac_fa is
	component ha
		port(a,b: in std_logic;
			s,c: out std_logic);
	end component;
	
	signal s1,c1,c2: std_logic;
	
	begin
		a1: ha port map(a,b,s1,c1);
		a2: ha port map(s1,cin,sum,c2);
		cout <= c1 or c2;
end logic;
