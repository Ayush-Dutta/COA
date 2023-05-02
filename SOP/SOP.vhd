----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:51 04/18/2023 
-- Design Name: 
-- Module Name:    SOP - Behavioral 
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

entity SOP is
    Port ( A, B, C, D : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end SOP;

architecture Behavioral of SOP is

begin
	process (A, B, C, D)
	begin
		if (A='0' and B='0' and C='0' and D='0')
		then
			Y<='0';
		elsif (D='1')
		then
			Y<='0';
		else
			y<='1';
		end if;
	end process;
end Behavioral;