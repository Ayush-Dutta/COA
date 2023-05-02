----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:44:11 03/24/2023 
-- Design Name: 
-- Module Name:    D_using_JK - Behavioral 
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

entity D_using_JK is
    Port ( Clk, D : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end D_using_JK;

architecture Behavioral of D_using_JK is

component JKFF is
    Port ( Clk , J, K, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end component;

begin
	JK : JKFF Port map (Clk, D, not D, '0', Q, Qnot);
end Behavioral;