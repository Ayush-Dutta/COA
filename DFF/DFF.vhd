----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:44 03/17/2023 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    Port ( Clk, D : in  STD_LOGIC;
           Q, Qnot : inout  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin
	process (D, Clk)
	variable temp : STD_LOGIC;
	begin
		if (Clk ='1')
		then
			if (D='0')
			then
				temp:='0';
			elsif (D='1')
			then
				temp:='1';
			end if;
		end if;
		Q<=temp;
		Qnot<=not temp;
	end process;
end Behavioral;