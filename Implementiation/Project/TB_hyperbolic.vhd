LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TB_hyperbolic IS
END TB_hyperbolic;
 
ARCHITECTURE behavior OF TB_hyperbolic IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hyperbolic
    PORT(
         phase_in : IN  std_logic_vector(9 downto 0);
         x_out : OUT  std_logic_vector(9 downto 0);
         y_out : OUT  std_logic_vector(9 downto 0);
         rdy : OUT  std_logic;
         clk : IN  std_logic;
         sclr : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal phase_in : std_logic_vector(9 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal sclr : std_logic := '0';

 	--Outputs
   signal x_out : std_logic_vector(9 downto 0);
   signal y_out : std_logic_vector(9 downto 0);
   signal rdy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hyperbolic PORT MAP (
          phase_in => phase_in,
          x_out => x_out,
          y_out => y_out,
          rdy => rdy,
          clk => clk,
          sclr => sclr
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin

	sclr <= '0';
	phase_in <= "0001001110";
	
      wait;
   end process;

END;
