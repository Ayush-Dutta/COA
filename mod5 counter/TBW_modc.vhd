--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:29:53 05/02/2023
-- Design Name:   
-- Module Name:   /home/ayush/Documents/2160049/modc/TBW_modc.vhd
-- Project Name:  modc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modc
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
 
ENTITY TBW_modc IS
END TBW_modc;
 
ARCHITECTURE behavior OF TBW_modc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modc
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         b : INOUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';

	--BiDirs
   signal b : std_logic_vector(2 downto 0);

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modc PORT MAP (
          a => a,
          clk => clk,
          b => b
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "000";
		wait for 100 ns;
		a <= "001";
		wait for 100 ns;
		a <= "010";
		wait for 100 ns;
		a <= "011";
		wait for 100 ns;
		a <= "100";
		wait for 100 ns;
   end process;

END;
