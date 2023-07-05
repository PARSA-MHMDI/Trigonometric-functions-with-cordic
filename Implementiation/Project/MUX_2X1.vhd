library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2X1 is
    Port ( input1 : in  STD_LOGIC_VECTOR (9 downto 0);
           input2 : in  STD_LOGIC_VECTOR (9 downto 0);
           sel : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (9 downto 0));
end MUX_2X1;

architecture Behavioral of MUX_2X1 is

begin

main:process(clk)
begin 

	if (rising_edge(clk)) then
		case sel is
			when '0' =>
				output <= input1;
			when '1' =>
				output <= input2;
			when others =>
				output <= "0000000000";
		end case;
	end if;

end process main;


end Behavioral;

