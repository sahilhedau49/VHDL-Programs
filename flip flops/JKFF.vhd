library IEEE;
use IEEE.std_logic_1164.all;
entity jkff is
	port(j,k,clk,rst: in std_logic;
	     q,qb: out std_logic);
end jkff;

architecture behavioral of jkff is
begin
	process(j,k,clk,rst)
begin
	if(rst='1') then
		q<='0';
		qb<='0';
	elsif(clk='1' and clk'event) then
		if(j/=k) then
			q<=j;
			qb<=not j;
		elsif(j='1' and k='1') then
			q<=not j;
			qb<=j;
		end if;
	end if;
	end process;
end behavioral;