----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:29:40 02/05/2023 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

component Half_Adder is
    Port ( A_HA : in  STD_LOGIC;
           B_HA : in  STD_LOGIC;
           Carry_HA : out  STD_LOGIC;
			  Sum_HA : out STD_LOGIC);
end component;

component or_gate is
    Port ( A_o : in  STD_LOGIC;
           B_o : in  STD_LOGIC;
           C_o : out  STD_LOGIC);
end component;

Signal S_HF1, C_HF1, C_HF2: STD_LOGIC;

begin
	Half_Adder_1 : Half_Adder Port map (A, B, C_HF1, S_HF1);
	Half_Adder_2 : Half_Adder Port map (S_HF1, Cin, C_HF2, Sum);
	or1 			 : or_gate Port map (C_HF1, C_HF2, Cout);
end Behavioral;