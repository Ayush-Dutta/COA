----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:41 01/28/2023 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin
	process (A, B, Cin)
	begin
		if (B=Cin)
		then
			Sum<= A;
		else
			Sum<= not A;
		end if;
		if (A=B)
		then
			Carry<=A;
		else
			Carry<=Cin;
		end if;
	end process;
end Behavioral;