----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:21 03/07/2023 
-- Design Name: 
-- Module Name:    Twos_Complement_3bit - Behavioral 
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

entity Twos_Complement_3bit is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : out  STD_LOGIC_VECTOR (2 downto 0));
end Twos_Complement_3bit;

architecture Behavioral of Twos_Complement_3bit is

component Half_Adder is
    Port ( A_HA : in  STD_LOGIC;
           B_HA : in  STD_LOGIC;
           Carry_HA : out  STD_LOGIC;
			  Sum_HA : out STD_LOGIC);
end component;

component not_gate is
    Port ( A_no : in  STD_LOGIC;
           B_no : out  STD_LOGIC);
end component;

Signal A_not : STD_LOGIC_VECTOR (2 downto 0);
Signal Cout0, Cout1 : STD_LOGIC;

begin
	not0 : not_gate Port map (A(0), A_not(0));
	not1 : not_gate Port map (A(1), A_not(1));
	not2 : not_gate Port map (A(2), A_not(2));
	
	HA0 : Half_Adder Port map (A_not(0), '1', Cout0, B(0));
	HA1 : Half_Adder Port map (A_not(1), Cout0, Cout1, B(1));
	HA2 : Half_Adder Port map (A_not(2), Cout1, open, B(2));
end Behavioral;