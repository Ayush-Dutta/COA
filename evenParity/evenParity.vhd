library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity evenParity is
    Port ( sent : in  STD_LOGIC_VECTOR (6 downto 0);
	   recieved : in  STD_LOGIC_VECTOR (7 downto 0);
           parity : out  STD_LOGIC);
end evenParity;

architecture Behavioral of evenParity is

begin
	process (sent, recieved)
	variable sentwParity : STD_LOGIC_VECTOR (7 downto 0);
	variable k : STD_LOGIC;
	begin
		k:=sent(0) xor sent(1);
		for i in 2 to 6 loop
			k:= k xor sent(i);
		end loop;
		sentwParity:= sent&k;
		
		k:=recieved(1) xor recieved(2);
		for i in 2 to 7 loop
			k:= k xor recieved(i);
		end loop;
		
		if (recieved(0)=k)
		then
			parity<='0';
		elsif (recieved(0)= not k)
		then
			parity<='1';
		end if;
	end process;
end Behavioral;