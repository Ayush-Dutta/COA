----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:17 02/02/2023 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

component and_gate is
    Port ( A_an : in  STD_LOGIC;
           B_an : in  STD_LOGIC;
           C_an : out  STD_LOGIC);
end component;

component xor_gate is
    Port ( A_xo : in  STD_LOGIC;
           B_xo : in  STD_LOGIC;
           C_xo : out  STD_LOGIC);
end component;

component or_gate is
    Port ( A_o : in  STD_LOGIC;
           B_o : in  STD_LOGIC;
           C_o : out  STD_LOGIC);
end component;

Signal S_HF1, C_HF1, S_HF2, C_HF2: STD_LOGIC;

begin
	HF1_xo : xor_gate Port map (A, B, S_HF1);
	HF1_an : and_gate Port map (A, B, C_HF1);
	HF2_xo : xor_gate Port map (Cin, S_HF1, Sum);
	HF2_an : and_gate Port map (Cin, S_HF1, C_HF2);
	or1	 : or_gate  Port map (C_HF1, C_HF2, Cout);
end Behavioral;