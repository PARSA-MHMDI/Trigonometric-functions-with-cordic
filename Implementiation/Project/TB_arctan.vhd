LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TB_arctan IS
END TB_arctan;
 
ARCHITECTURE behavior OF TB_arctan IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arctan
    PORT(
         x_in : IN  std_logic_vector(9 downto 0);
         y_in : IN  std_logic_vector(9 downto 0);
         phase_out : OUT  std_logic_vector(9 downto 0);
         rdy : OUT  std_logic;
         clk : IN  std_logic;
         sclr : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(9 downto 0) := (others => '0');
   signal y_in : std_logic_vector(9 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal sclr : std_logic := '0';

 	--Outputs
   signal phase_out : std_logic_vector(9 downto 0);
   signal rdy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arctan PORT MAP (
          x_in => x_in,
          y_in => y_in,
          phase_out => phase_out,
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
	x_in <= "0010100000";
	y_in <= "0010000000";
   wait for 200 ns;
	
	sclr <= '1';
   wait for 200 ns;
	
	sclr <= '0';
	x_in <= "0010110100";
	y_in <= "0010110100";

      wait;
   end process;

END;
