Library IEEE;
use IEEE.std_logic_1164.all;

entity pra_mux41 is
	port(a : in std_logic_vector(3 downto 0);
		e,s0,s1 : in std_logic;
		y : out std_logic);
end pra_mux41;

architecture logic of pra_mux41 is
begin
	process(a,e,s0,s1)
	begin
		if(e='0') then
			y <= '0';
		else
			if(s1='0' and s0='0') then
				y <= a(0);
			elsif(s1='0' and s0='1') then
				y <= a(1);
			elsif(s1='1' and s0='0') then
				y <= a(2);
			elsif(s1='1' and s0='1') then
				y <= a(3);
			end if;
		end if;
	end process;
end logic;