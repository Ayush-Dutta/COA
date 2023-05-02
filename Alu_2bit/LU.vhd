----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:04 03/04/2023 
-- Design Name: 
-- Module Name:    LU - Behavioral 
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

entity LU is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end LU;

architecture Behavioral of LU is

component Half_Adder is
    Port ( A_HA, B_HA : in  STD_LOGIC;
           Carry_HA, Sum_HA : out STD_LOGIC);
end component;

component MUX2_1_3bit is
    Port ( I0, I1 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

Signal LU_and, LU_xor : STD_LOGIC_VECTOR (2 downto 0);

begin
	LU_and(2)<='0';
	LU_xor(2)<='0';
	HA0 : Half_Adder Port map (A(0), B(0), LU_and(0), LU_xor(0));
	HA1 : Half_Adder Port map (A(1), B(1), LU_and(1), LU_xor(1));
	MUX_LU : MUX2_1_3bit Port map (LU_and, LU_xor, S, Op);
end Behavioral;