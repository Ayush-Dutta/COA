library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8_1 is
    Port ( I0, I1, I2, I3, I4, I5, I6, I7 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX8_1;

architecture Behavioral of MUX8_1 is

begin
        process (S)
        begin
                case S is
                        when "000" => Y<=I0;
                        when "001" => Y<=I1;
                        when "010" => Y<=I2;
                        when "011" => Y<=I3;
                        when "100" => Y<=I4;
                        when "101" => Y<=I5;
                        when "110" => Y<=I6;
                        when "111" => Y<=I7;
                        when others => Y<="000";
                end case;
        end process;
end Behavioral;
