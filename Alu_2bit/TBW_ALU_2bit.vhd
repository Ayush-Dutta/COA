--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:38:24 03/04/2023
-- Design Name:   
-- Module Name:   C:/COA/ALU_2bit/TBW_ALU_2bit.vhd
-- Project Name:  ALU_2bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_2bit
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

ENTITY TBW_ALU_2bit IS
END TBW_ALU_2bit;
 
ARCHITECTURE behavior OF TBW_ALU_2bit IS 

    COMPONENT ALU_2bit
    PORT(A, B, S : IN  std_logic_vector(1 downto 0);
         Operation : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;

   signal A, B, S : std_logic_vector(1 downto 0) := (others => '0');
   signal Operation : std_logic_vector(2 downto 0);

BEGIN
   uut: ALU_2bit PORT MAP (
          A => A,
          B => B,
          S => S,
          Operation => Operation);

   stim_proc: process
   begin		
      A<="00";
	for i in 1 to 4 loop
		B<="00";
		for j in 1 to 4 loop
			S<="00";
			for k in 1 to 3 loop
				wait for 10 ns;	
				S<=S+"01";
			end loop;
			wait for 10 ns;B<=B+"01";
		end loop;
		A<=A+"01";
	end loop;
   end process;
END;