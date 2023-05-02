----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:56:34 04/07/2023 
-- Design Name: 
-- Module Name:    Decoder3_8 - Behavioral 
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

entity Decoder3_8 is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder3_8;

architecture Behavioral of Decoder3_8 is

component Decoder2_4 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
	Dec1 : Decoder2_4 Port map (A(1 downto 0), A(2), D(7 downto 4));
	Dec2 : Decoder2_4 Port map (A(1 downto 0), not A(2), D(3 downto 0));
end Behavioral;