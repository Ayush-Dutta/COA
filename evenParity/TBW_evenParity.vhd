--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:25 04/17/2023
-- Design Name:   
-- Module Name:   C:/COA/evenParity/TBW_evenParity.vhd
-- Project Name:  evenParity
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: evenParity
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TBW_evenParity IS
END TBW_evenParity;
 
ARCHITECTURE behavior OF TBW_evenParity IS 

	 COMPONENT evenParity
	 PORT(sent : IN  std_logic_vector(6 downto 0);
			recieved : IN  std_logic_vector(7 downto 0);
			parity : OUT  std_logic);
	 END COMPONENT;
 
	signal sent : std_logic_vector(6 downto 0) := (others => '0');
	signal recieved : std_logic_vector(7 downto 0) := (others => '0');

	signal parity : std_logic;

BEGIN
	uut: evenParity PORT MAP (
			 sent => sent,
			 recieved => recieved,
			 parity => parity);

	stim_proc: process
	begin		
			sent<="1001001";	recieved<="10011011";	wait for 100 ns;	--1 bit changed
			sent<="1001001";	recieved<="10010011";	wait for 100 ns;	--0 bit changed
			sent<="1001001";	recieved<="11001011";	wait for 100 ns;	--3 bit changed
			sent<="1001001";	recieved<="01100011";	wait for 100 ns;	--4 bit changed
			sent<="1001001";	recieved<="10010010";	wait for 100 ns;	--parity bit changed
	end process;
END;