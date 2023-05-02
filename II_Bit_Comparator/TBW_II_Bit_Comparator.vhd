--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:23:33 02/17/2023
-- Design Name:   
-- Module Name:   C:/COA/II-Bit_Comparator/TBW_II_Bit_Comparator.vhd
-- Project Name:  II-Bit_Comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: II_Bit_Comparator
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
USE ieee.std_logic_unsigned.ALL;

ENTITY TBW_II_Bit_Comparator IS
END TBW_II_Bit_Comparator;
 
ARCHITECTURE behavior OF TBW_II_Bit_Comparator IS 

    COMPONENT II_Bit_Comparator
    PORT(A, B : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;

   signal A, B : std_logic_vector(1 downto 0) := (others => '0');
   signal O : std_logic_vector(2 downto 0);

BEGIN
 
   uut: II_Bit_Comparator PORT MAP (
          A => A,
          B => B,
          O => O);

   stim_proc: process
   begin
	A<="00";
	for i in 1 to 4 loop
		B<="00";
		for j in 1 to 3 loop
			wait for 50 ns;	B<=B+"01";
		end loop;
		wait for 50 ns;	A<=A+"01";
	end loop;
   end process;
END;