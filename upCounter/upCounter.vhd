----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:00 04/02/2023 
-- Design Name: 
-- Module Name:    upCounter - Behavioral 
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

entity upCounter is
    Port ( Clk, reset : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end upCounter;

architecture Behavioral of upCounter is

component JKFF is
    Port ( Clk , J, K, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end component;

Signal S1, S2 : STD_LOGIC;

begin
	JKFF0: JKFF Port map (Clk, '1', '1', reset, Q(0), open);
	JKFF1: JKFF Port map (Clk, Q(0), Q(0), reset, Q(1), open);
	S1<=Q(1) and Q(0);
	JKFF2: JKFF Port map (Clk, S1, S1, reset, Q(2), open);
	S2<=Q(2) and S1;
	JKFF3: JKFF Port map (Clk, S2, S2,reset, Q(3), open);
end Behavioral;