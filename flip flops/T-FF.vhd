library IEEE;
use IEEE.std_logic_1164.all;
entity tff is
	port(t,clk,rst: in std_logic;
 	     qn1: out std_logic);
end tff;

architecture behavioral of tff is
signal temp : std_logic;
begin
	process(t,clk,rst)
	begin
	if(rst='1') then
			temp <= '0';
	elsif(clk = '1' and clk'event) then
		if( t = '0') then
			temp <= temp;
		elsif(t = '1') then
			temp <= not(temp);
		end if;
	end if;	
	end process;
	qn1 <= temp;
end behavioral;	