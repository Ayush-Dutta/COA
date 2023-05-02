--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:29:52 03/23/2023
-- Design Name:   
-- Module Name:   C:/COA/T_using_JK/TBW_T_using_JK.vhd
-- Project Name:  T_using_JK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_using_JK
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

ENTITY TBW_T_using_JK IS
END TBW_T_using_JK;
 
ARCHITECTURE behavior OF TBW_T_using_JK IS 

    COMPONENT T_using_JK
    PORT(Clk, T, reset : IN  std_logic;
         Q, Qnot : OUT  std_logic);
    END COMPONENT;

   signal Clk, T, reset : std_logic := '0';
   signal Q, Qnot : std_logic;

BEGIN
   uut: T_using_JK PORT MAP (
          Clk => Clk,
          T => T,
			 reset => reset,
          Q => Q,
          Qnot => Qnot);

	reset_proc: process
	begin
		reset<='1';		wait for 50 ns;
		reset<='0';		wait;
	end process;

   stim_proc: process
   begin
	Clk<='1';
	T<='0'; wait for 100 ns;
	T<='1'; wait for 100 ns;
   end process;
END;