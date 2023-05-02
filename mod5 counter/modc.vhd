----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:58 05/02/2023 
-- Design Name: 
-- Module Name:    modc - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modc is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           b : inout  STD_LOGIC_VECTOR (2 downto 0));
end modc;

architecture Behavioral of modc is
component notgate is
	port (m:in STD_LOGIC;
			n:out STD_LOGIC);
end component;
component andgate is
	port (p,q,r:in STD_LOGIC;
			s:out STD_LOGIC);
end component;
component jkff is
	port (j,k,clk,rst:in STD_LOGIC;
			q0:inout STD_LOGIC;
			qn:out STD_LOGIC);
end component;
signal x1,x2,x3,x4,x5:STD_LOGIC;
begin
	z1:notgate port map(a(1),x1);
	z2:andgate port map(a(0),x1,a(2),x2);
	z3:jkff port map (a(0),x2,clk,'1',b(0),x3);
	z4:jkff port map (a(1),x2,x3,'1',b(1),x4);
	z5:jkff port map (a(2),x2,x4,'1',b(2),x5);

end Behavioral;

