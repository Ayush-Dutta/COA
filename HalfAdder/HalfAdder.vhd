----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:47 04/18/2023 
-- Design Name: 
-- Module Name:    HalfAdder - Behavioral 
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

entity HalfAdder is
    Port ( A, B : in  STD_LOGIC;
           Sum, Carry : out  STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin
	Sum<= A xor B;
	Carry<= A and B;
end Behavioral;