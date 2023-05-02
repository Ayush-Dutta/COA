--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:44:05 01/29/2023
-- Design Name:   
-- Module Name:   C:/COA/Full_Subtractor_Be/TBW_Full_Subtractor.vhd
-- Project Name:  Full_Subtractor_Be
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Subtractor
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
 
ENTITY TBW_Full_Subtractor IS
END TBW_Full_Subtractor;
 
ARCHITECTURE behavior OF TBW_Full_Subtractor IS 

    COMPONENT Full_Subtractor
    PORT(A, B, Bin : IN  std_logic;
         Difference, Bout : OUT  std_logic);
    END COMPONENT;

   signal A, B, Bin : std_logic := '0';

   signal Difference, Bout : std_logic;
 
BEGIN
   uut: Full_Subtractor PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Difference => Difference,
          Bout => Bout);

   stim_proc: process
   begin
	A<='0'; B<='0'; Bin<='0'; wait for 100 ns;
	A<='0'; B<='0'; Bin<='1'; wait for 100 ns;
	A<='0'; B<='1'; Bin<='0'; wait for 100 ns;
	A<='0'; B<='1'; Bin<='1'; wait for 100 ns;
	A<='1'; B<='0'; Bin<='0'; wait for 100 ns;
	A<='1'; B<='0'; Bin<='1'; wait for 100 ns;
	A<='1'; B<='1'; Bin<='0'; wait for 100 ns;
	A<='1'; B<='1'; Bin<='1'; wait for 100 ns;
   end process;
END;