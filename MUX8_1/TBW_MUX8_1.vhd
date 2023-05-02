--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:32 03/04/2023
-- Design Name:   
-- Module Name:   C:/COA/MUX8_1/TBW_MUX8_1.vhd
-- Project Name:  MUX8_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX8_1
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
USE ieee.std_logic_UNSIGNED.ALL;

ENTITY TBW_MUX8_1 IS
END TBW_MUX8_1;
 
ARCHITECTURE behavior OF TBW_MUX8_1 IS 

    COMPONENT MUX8_1
    PORT(I0, I1, I2, I3, I4, I5, I6, I7 : IN  std_logic_vector(2 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(2 downto 0));
    END COMPONENT;

   signal I0, I1, I2, I3, I4, I5, I6, I7 : std_logic_vector(2 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

   signal Y : std_logic_vector(2 downto 0);

BEGIN
   uut: MUX8_1 PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          I4 => I4,
          I5 => I5,
          I6 => I6,
          I7 => I7,
          S => S,
          Y => Y
        );

init_proc: process
begin
	I0<="000";	
	I1<="001";	
	I2<="010";	
	I3<="011";	
	I4<="100";	
	I5<="101";	
	I6<="110";	
	I7<="111";	wait for 800 ns;
	
	I0<="100";	
	I1<="101";	
	I2<="110";	
	I3<="111";	
	I4<="000";	
	I5<="001";	
	I6<="010";	
	I7<="011"; wait;
end process;

    stim_proc: process
   begin		
	
	S<="000";	wait for 100 ns;
	for i in 1 to 7 loop
		S<=S+"001";	wait for 100 ns;
	end loop;
	--wait;
   end process;
END;