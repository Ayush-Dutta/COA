----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:25:31 03/23/2023 
-- Design Name: 
-- Module Name:    T_using_JK - Behavioral 
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

entity T_using_JK is
    Port ( Clk, T, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end T_using_JK;

architecture Behavioral of T_using_JK is

component JKFF is
    Port ( Clk , J, K, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end component;

begin
	JK : JKFF Port map (Clk, T, T, reset, Q, Qnot);
end Behavioral;