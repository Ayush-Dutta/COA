----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:49:25 03/04/2023 
-- Design Name: 
-- Module Name:    Full_Adder_2bit - Behavioral 
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

entity Full_Adder_2bit is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           Cin : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end Full_Adder_2bit;

architecture Behavioral of Full_Adder_2bit is

component Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

Signal Cout0 :  STD_LOGIC;

begin
	FA0 : Full_Adder Port map (A(0), B(0), Cin, Op(0), Cout0);
	FA1 : Full_Adder Port map (A(1), B(1), Cout0, Op(1), Op(2));
end Behavioral;