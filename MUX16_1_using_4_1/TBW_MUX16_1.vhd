--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:06:25 02/08/2023
-- Design Name:   
-- Module Name:   C:/COA/MUX16_1_using_4_1/TBW_MUX16_1.vhd
-- Project Name:  MUX16_1_using_4_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_16_1
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY TBW_MUX16_1 IS
END TBW_MUX16_1;
 
ARCHITECTURE behavior OF TBW_MUX16_1 IS 
 
    COMPONENT MUX_16_1
    PORT(
         I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15 : in  STD_LOGIC_VECTOR (3 downto 0);
         S : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15 : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
 
BEGIN
   uut: MUX_16_1 PORT MAP (
	I0 => I0,
	I1 => I1,
	I2 => I2,
	I3 => I3,
	I4 => I4,
	I5 => I5,
	I6 => I6,
	I7 => I7,
	I8 => I8,
	I9 => I9,
	I10 => I10,
	I11 => I11,
	I12 => I12,
	I13 => I13,
	I14 => I14,
	I15 => I15,
	S => S,
	Y => Y );

   i_proc: process
   begin		
	I0<="0000";	
	I1<="0001";	
	I2<="0010";	
	I3<="0011";	
	I4<="0100";	
	I5<="0101";	
	I6<="0110";	
	I7<="0111";	
	I8<="1000";	
	I9<="1001";	
	I10<="1010";	
	I11<="1011";	
	I12<="1100";	
	I13<="1101";	
	I14<="1110";	
	I15<="1111"; wait for 800 ns;
	
	I0<="1000";	
	I1<="1001";	
	I2<="1010";	
	I3<="1011";	
	I4<="1100";	
	I5<="1101";	
	I6<="1110";	
	I7<="1111";	
	I8<="0000";	
	I9<="0001";	
	I10<="0010";	
	I11<="0011";	
	I12<="0100";	
	I13<="0101";	
	I14<="0110";	
	I15<="0111"; wait;
	end process;
	

   -- Stimulus process
   stim_proc: process
   begin	
	S<="0000";	wait for 50 ns;
	for i in 1 to 15 loop
		S<=S+"0001";	wait for 50 ns;
	end loop;
   end process;
END;