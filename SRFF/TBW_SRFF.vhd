--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:25:41 04/01/2023
-- Design Name:   
-- Module Name:   C:/COA/SRFF/TBW_SRFF.vhd
-- Project Name:  SRFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFF
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

ENTITY TBW_SRFF IS
END TBW_SRFF;
 
ARCHITECTURE behavior OF TBW_SRFF IS 
 
    COMPONENT SRFF
    PORT(Clk, S, R, reset : IN  std_logic;
         Q, Qnot : OUT  std_logic);
    END COMPONENT;
    
   signal Clk, S, R, reset : std_logic := '0';
   signal Q, Qnot : std_logic;

BEGIN
   uut: SRFF PORT MAP (
          Clk => Clk,
          S => S,
          R => R,
          reset => reset,
          Q => Q,
          Qnot => Qnot);

   reset_process :process
   begin
		reset<='1';	wait for 50 ns;
		reset<='0';	wait;
   end process;

   stim_proc: process
   begin		
      Clk<='1';
		S<='0'; R<='0'; wait for 100 ns;
		S<='0'; R<='1'; wait for 100 ns;
		S<='1'; R<='0'; wait for 100 ns;
		S<='1'; R<='1'; wait for 100 ns;
   end process;

END;
