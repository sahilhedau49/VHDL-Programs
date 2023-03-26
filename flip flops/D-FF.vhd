library IEEE;
use IEEE.std_logic_1164.all;
entity dff is
	port(d,clk,rst: in std_logic;
	     qn1: out std_logic);
end dff;

architecture behavioral of dff is
begin
	process(d,clk,rst)
	begin
		if(rst='1') then
			qn1<='0';
		elsif(clk='1' and clk'event) then
			qn1<=D;
		end if;
	end process;
end behavioral;