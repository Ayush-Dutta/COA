----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:37 02/16/2023 
-- Design Name: 
-- Module Name:    Bin2Gray - Behavioral 
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

entity Bin2Gray is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC_VECTOR (3 downto 0));
end Bin2Gray;

architecture Behavioral of Bin2Gray is

component xor_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;

begin
	X1 : xor_gate Port map (B(3), '0', G(3));
	X2 : xor_gate Port map (B(3), B(2), G(2));
	X3 : xor_gate Port map (B(2), B(1), G(1));
	X4 : xor_gate Port map (B(1), B(0), G(0));
end Behavioral;