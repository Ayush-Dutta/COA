----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:12 03/07/2023 
-- Design Name: 
-- Module Name:    MUX4_1_3bit - Behavioral 
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

entity MUX4_1_3bit is
    Port ( I0, I1, I2, I3 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX4_1_3bit;

architecture Behavioral of MUX4_1_3bit is

component MUX2_1_3bit is
    Port ( I0, I1 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

Signal Y0, Y2 : STD_LOGIC_VECTOR (2 downto 0);

begin
	MUX_in1 : MUX2_1_3bit Port map (I0, I1, S(0), Y0);
	MUX_in2 : MUX2_1_3bit Port map (I2, I3, S(0), Y2);
	MUX_out : MUX2_1_3bit Port map (Y0, Y2, S(1), Y);
end Behavioral;