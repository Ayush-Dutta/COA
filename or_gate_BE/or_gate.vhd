library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end or_gate;

architecture Behavioral of or_gate is

begin
	process (A, B)
	begin
		if (A='0' and B='0')
		then
			C<='0';
		else
			C<='1';
		end if;
	end process;
end Behavioral;