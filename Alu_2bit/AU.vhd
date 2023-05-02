----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:25:38 03/04/2023 
-- Design Name: 
-- Module Name:    AU - Behavioral 
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

entity AU is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end AU;

architecture Behavioral of AU is

component Full_Adder_2bit is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           Cin : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component MUX4_1_3bit is
    Port ( I0, I1, I2, I3 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component Twos_Complement_3bit is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component MUX2_1 is
    Port ( I0, I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

component not_gate is
    Port ( A_no : in  STD_LOGIC;
           B_no : out  STD_LOGIC);
end component;

Signal B_not, B_MUXout, sel : STD_LOGIC_VECTOR (1 downto 0);
Signal FA_out, MUXin11, MUXin10 : STD_LOGIC_VECTOR (2 downto 0);

begin
	not0 : not_gate Port map (B(0), B_not(0));
	not1 : not_gate Port map (B(1), B_not(1));
	MUX0 : MUX2_1 Port map (B(0), B_not(0), S, B_MUXout(0));
	MUX1 : MUX2_1 Port map (B(1), B_not(1), S, B_MUXout(1));
	FA2bit   : Full_Adder_2bit Port map (A, B_MUXout, S, FA_out);
	
	notMUXin11 : not_gate Port map (FA_out(2), MUXin11(2));
	MUXin11(1)<=FA_out(1);		MUXin11(0)<=FA_out(0);
	
	Twos_Comp : Twos_Complement_3bit Port map (FA_out, MUXin10);
	
	sel(1)<=S;		sel(0)<=FA_out(2);
	MUX41 : MUX4_1_3bit Port map (FA_out, FA_out, MUXin10, MUXin11, sel, Op);
end Behavioral;