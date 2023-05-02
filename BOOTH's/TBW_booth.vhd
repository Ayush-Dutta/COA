--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:05:11 05/02/2023
-- Design Name:   
-- Module Name:   /home/ayush/Documents/2160049/booth_mul/TBW_booth.vhd
-- Project Name:  booth_mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: booth_mul
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
 
ENTITY TBW_booth IS
END TBW_booth;
 
ARCHITECTURE behavior OF TBW_booth IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT booth_mul
    PORT(
         a : IN  std_logic_vector(4 downto 0);
         b : IN  std_logic_vector(4 downto 0);
         op : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(4 downto 0) := (others => '0');
   signal b : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: booth_mul PORT MAP (
          a => a,
          b => b,
          op => op
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "00111";
		wait for 100 ns;
		b <= "01100";
		wait for 100 ns;
   end process;

END;
