----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:32 03/18/2023 
-- Design Name: 
-- Module Name:    threeInput_NAND - Behavioral 
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

entity nand_gate is
    Port ( A, B, C : in  STD_LOGIC;
           D : inout  STD_LOGIC);
end nand_gate;

architecture Behavioral of nand_gate is

begin
	D<=not (A and B and C);
end Behavioral;