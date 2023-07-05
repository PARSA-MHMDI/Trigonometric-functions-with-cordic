library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RadianToDegree is
    Port ( radians : in  STD_LOGIC_VECTOR(9 downto 0);
           degrees : out STD_LOGIC_VECTOR(9 downto 0));
end RadianToDegree;

architecture Behavioral of RadianToDegree is
    constant pi     : real := 3.1415926535897932384626433832795;
    constant factor : real := 180.0 / pi;
begin
    process (radians)
        variable rad_real : real;
        variable deg_real : real;
    begin
        rad_real := real(to_integer(signed(radians))) / (2.0**10);
        deg_real := rad_real * factor;
        degrees <= std_logic_vector(to_unsigned(integer(deg_real), degrees'length));
    end process;
end Behavioral;
