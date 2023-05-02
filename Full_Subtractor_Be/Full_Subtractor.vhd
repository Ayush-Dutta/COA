----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:09 01/28/2023 
-- Design Name: 
-- Module Name:    Full_Subtractor - Behavioral 
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

entity Full_Subtractor is
    Port ( A, B, Bin : in  STD_LOGIC;
           Difference, Bout : out  STD_LOGIC);
end Full_Subtractor;

architecture Behavioral of Full_Subtractor is

begin
	process (A, B, Bin)
	begin
		if (B=Bin)
		then
			Difference<= A;
		else
			Difference<= not A;
		end if;
		if (A=B)
		then
			Bout<=Bin;
		else
			Bout<= not A;
		end if;
	end process;
end Behavioral;