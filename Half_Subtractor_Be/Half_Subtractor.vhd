----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:01 01/28/2023 
-- Design Name: 
-- Module Name:    Half_Subtractor - Behavioral 
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

entity Half_Subtractor is
    Port ( A, B : in  STD_LOGIC;
           Difference, Borrow : out  STD_LOGIC);
end Half_Subtractor;

architecture Behavioral of Half_Subtractor is

begin
	process (A, B)
	begin
		if (A=B)
		then
			Difference<='0';
		else
			Difference<='1';
		end if;
		if (A='0' and B='1')
		then
			Borrow<='1';
		else
			Borrow<='0';
		end if;
	end process;
end Behavioral;