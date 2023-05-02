----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:17 02/16/2023 
-- Design Name: 
-- Module Name:    Gray2Bin - Behavioral 
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

entity Gray2Bin is
    Port ( G : in  STD_LOGIC_VECTOR (3 downto 0);
           B : inout  STD_LOGIC_VECTOR (3 downto 0));
end Gray2Bin;

architecture Behavioral of Gray2Bin is

component xor_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;

begin
	X1 : xor_gate Port map ( '0', G(3), B(3));
	X2 : xor_gate Port map (B(3), G(2), B(2));
	X3 : xor_gate Port map (B(2), G(1), B(1));
	X4 : xor_gate Port map (B(1), G(0), B(0));
end Behavioral;