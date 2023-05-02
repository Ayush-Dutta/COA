----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:45 03/04/2023 
-- Design Name: 
-- Module Name:    ALU_2bit - Behavioral 
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

entity ALU_2bit is
    Port ( A, B, S : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (2 downto 0));
end ALU_2bit;

architecture Behavioral of ALU_2bit is

component AU is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component LU is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC;
           Op : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component MUX2_1_3bit is
    Port ( I0, I1 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

Signal AU_out, LU_out : STD_LOGIC_VECTOR (2 downto 0);

begin
	A_unit : AU Port map (A, B, S(0), AU_out);
	L_unit : LU Port map (A, B, S(0), LU_out);
	MUX : MUX2_1_3bit Port map (AU_out, LU_out, S(1), Operation);
end Behavioral;