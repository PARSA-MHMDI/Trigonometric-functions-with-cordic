library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Top is
    Port (
        input_phase : in  STD_LOGIC_VECTOR (9 downto 0);
        x_in : in STD_LOGIC_VECTOR (9 downto 0);
        y_in : in STD_LOGIC_VECTOR (9 downto 0);
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        sel : in  STD_LOGIC;
        result : out  STD_LOGIC_VECTOR (9 downto 0) := "0000000000"
    );
end Top;

architecture Behavioral of Top is
    COMPONENT MUX_2X1
        PORT (
            input1 : IN std_logic_vector(9 downto 0);
            input2 : IN std_logic_vector(9 downto 0);
            sel : IN std_logic;
            clk : IN std_logic;
            output : OUT std_logic_vector(9 downto 0)
        );
    END COMPONENT;

    COMPONENT arctan
        PORT (
            x_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            y_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            phase_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            rdy : OUT STD_LOGIC;
            clk : IN STD_LOGIC;
            sclr : IN STD_LOGIC
        );
    END COMPONENT;

    COMPONENT hyperbolic
        PORT (
            phase_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            x_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            y_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            rdy : OUT STD_LOGIC;
            clk : IN STD_LOGIC;
            sclr : IN STD_LOGIC
        );
    END COMPONENT;

    signal arctan_out : std_logic_vector(9 downto 0);
    signal exp_out, cosh_out, sinh_out : std_logic_vector(9 downto 0);
    signal mux_out : std_logic_vector(9 downto 0);
    signal arctanRDY, hyperbolicRDY : std_logic;

begin

    MUX_2X1_modul: MUX_2X1 PORT MAP(
        input1 => arctan_out,
        input2 => exp_out,
        sel => sel,
        clk => clk,
        output => mux_out
    );

    arctan_modul : arctan
        PORT MAP (
            x_in => x_in,
            y_in => y_in,
            phase_out => arctan_out,
            rdy => arctanRDY,
            clk => clk,
            sclr => rst
        );

    hyperbolic_modul : hyperbolic
        PORT MAP (
            phase_in => input_phase,
            x_out => cosh_out,
            y_out => sinh_out,
            rdy => hyperbolicRDY,
            clk => clk,
            sclr => rst
        );

    process(clk, hyperbolicRDY, arctanRDY)
    begin
        if rising_edge(clk) then
            if (sel = '0') then -- arctanh
                if arctanRDY = '1' then 
                    result <= mux_out;
					 else 
						 exp_out <= "0000000000";
                end if;
					 
            elsif (sel = '1') then -- E^x
					 result <= mux_out;
                if hyperbolicRDY = '1' then
                    exp_out <= cosh_out + sinh_out;
					 else 
						exp_out <= "0000000000";
                end if;
            end if;
        end if;
    end process;

end Behavioral;
