----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:35 05/02/2023 
-- Design Name: 
-- Module Name:    booth_mul - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity booth_mul is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           op : out  STD_LOGIC_VECTOR (9 downto 0));
end booth_mul;

architecture Behavioral of booth_mul is

begin
process(a,b)
variable m:std_logic_vector(9 downto 0);
variable s:std_logic;
begin
	m:="00000" & b;
	s:='0';
	for i in 0 to 4 loop
		if(m(0)='0' and s='1')
		then
			m(4 downto 0):=m(4 downto 0) + a;
			s:= m(0);
			m(3 downto 0):=m(4 downto 1);
		elsif(m(0)='1' and s='0')
		then
			m(4 downto 0):=m(4 downto 0) - a;
			s:= m(0);
			m(3 downto 0):=m(4 downto 1);
		else
			s:= m(0);
			m(3 downto 0):=m(4 downto 1);
		end if;
	end loop;
	op <= m;
end process;
end Behavioral;

