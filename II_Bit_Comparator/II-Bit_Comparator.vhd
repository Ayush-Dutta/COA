----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:49 02/16/2023 
-- Design Name: 
-- Module Name:    II-Bit_Comparator - Behavioral 
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

entity II_Bit_Comparator is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end II_Bit_Comparator;

architecture Behavioral of II_Bit_Comparator is

component threeInput_AND is
    Port ( A_an, B_an, C_an : in  STD_LOGIC;
           D_an : out  STD_LOGIC);
end component;

component threeInput_OR is
    Port ( A_o, B_o, C_o : in  STD_LOGIC;
           D_o : out  STD_LOGIC);
end component;

component not_gate is
    Port ( A_no : in  STD_LOGIC;
           B_no : out  STD_LOGIC);
end component;

component xnor_gate is
    Port ( A_xn, B_xn : in  STD_LOGIC;
           C_xn : out  STD_LOGIC);
end component;

Signal A_not, B_not, xnor_0 : STD_LOGIC_VECTOR (1 downto 0);
Signal and1, and2 : STD_LOGIC_VECTOR (2 downto 0);

begin
	notA1 : not_gate Port map (A(1), A_not(1));
	notA0 : not_gate Port map (A(0), A_not(0));
	notB1 : not_gate Port map (B(1), B_not(1));
	notB0 : not_gate Port map (B(0), B_not(0));

	xnor00 : xnor_gate Port map (A(0), B(0), xnor_0(0));
	xnor01 : xnor_gate Port map (A(1), B(1), xnor_0(1));
	op0 : threeInput_AND Port map (xnor_0(0), xnor_0(1), '1', O(0));
	
	and10 : threeInput_AND Port map (A_not(1), B(1), '1', and1(0));
	and11 : threeInput_AND Port map (A_not(0), B(1), B(0), and1(1));
	and12 : threeInput_AND Port map (A_not(1), A_not(0), B(0), and1(2));
	op1 : threeInput_OR Port map (and1(0), and1(1), and1(2), O(1));
	
	and20 : threeInput_AND Port map (A(1), B_not(1), '1', and2(0));
	and21 : threeInput_AND Port map (A(0), B_not(1), B_not(0), and2(1));
	and22 : threeInput_AND Port map (A(1), A(0), B_not(0), and2(2));
	op2 : threeInput_OR Port map (and2(0), and2(1), and2(2), O(2));	
end Behavioral;