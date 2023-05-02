--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:17:39 03/05/2023
-- Design Name:   
-- Module Name:   C:/COA/ALU_2bit/TBW_MUX2_1_3bit.vhd
-- Project Name:  ALU_2bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX2_1_3bit
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
 
ENTITY TBW_MUX2_1_3bit IS
END TBW_MUX2_1_3bit;
 
ARCHITECTURE behavior OF TBW_MUX2_1_3bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX2_1_3bit
    PORT(
         I0 : IN  std_logic_vector(2 downto 0);
         I1 : IN  std_logic_vector(2 downto 0);
         S : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(2 downto 0) := (others => '0');
   signal I1 : std_logic_vector(2 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX2_1_3bit PORT MAP (
          I0 => I0,
          I1 => I1,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
     I0<="111";
	  I1<="110";
	  S<='0'; wait for 500 ns;
	  S<='1'; wait for 500 ns;
   end process;

END;
