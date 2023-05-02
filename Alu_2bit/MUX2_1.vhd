----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:44 03/04/2023 
-- Design Name: 
-- Module Name:    MUX2_1 - Behavioral 
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

entity MUX2_1 is
    Port ( I0, I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MUX2_1;

architecture Behavioral of MUX2_1 is

begin
	process (I0, I1, S)
	begin
		if (S='0')
		then
			Y<=I0;
		elsif (S='1')
		then
			Y<=I1;
		else
			Y<='0';
		end if;
	end process;
end Behavioral;