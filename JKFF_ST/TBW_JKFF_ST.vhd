--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:11:34 03/16/2023
-- Design Name:   
-- Module Name:   C:/COA/JKFF/TBW_JKFF.vhd
-- Project Name:  JKFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JKFF
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBW_JKFF IS
END TBW_JKFF;
 
ARCHITECTURE behavior OF TBW_JKFF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JKFF
    PORT(Clk, J, K, reset : IN  std_logic;
         Q, Qnot : INOUT  std_logic);
    END COMPONENT;
    

   --Inputs
   signal Clk, J, K, reset : std_logic := '0';

	--BiDirs
   signal Q, Qnot : std_logic;

 
BEGIN
   uut: JKFF PORT MAP (
          Clk => Clk,
          J => J,
          K => K,
          reset => reset,
          Q => Q,
          Qnot => Qnot
        );

	reset_proc: process
	begin
		reset<='1';		wait for 50 ns;
		reset<='0';		wait;
	end process;

   stim_proc: process
   begin
		Clk<='1';
		J<='0'; K<='0'; wait for 100 ns;
		J<='0'; K<='1'; wait for 100 ns;
		J<='1'; K<='0'; wait for 100 ns;
		J<='1'; K<='1'; wait for 100 ns;
   end process;

END;