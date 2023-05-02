----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:42 03/16/2023 
-- Design Name: 
-- Module Name:    JKFF - Behavioral 
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

entity TFF is
    Port ( Clk , T, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end TFF;

architecture Behavioral of TFF is

begin
	process (T, Clk, reset)
	variable temp :  STD_LOGIC;
	begin
		if (reset='1')
		then
			temp:='0';
		end if;
		if (Clk ='1')
		then
			if (T='1')
			then
				temp:=not temp;
			end if;
		end if;
		Q<=temp;
		Qnot<=not temp;
	end process;
end Behavioral;