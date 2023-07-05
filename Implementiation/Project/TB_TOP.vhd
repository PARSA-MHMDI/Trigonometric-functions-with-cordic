LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TB_TOP IS
END TB_TOP;
 
ARCHITECTURE behavior OF TB_TOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top
    PORT(
         input_phase : IN  std_logic_vector(9 downto 0);
         x_in : IN  std_logic_vector(9 downto 0);
         y_in : IN  std_logic_vector(9 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         sel : IN  std_logic;
         result : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input_phase : std_logic_vector(9 downto 0) := (others => '0');
   signal x_in : std_logic_vector(9 downto 0) := (others => '0');
   signal y_in : std_logic_vector(9 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sel : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top PORT MAP (
          input_phase => input_phase,
          x_in => x_in,
          y_in => y_in,
          clk => clk,
          rst => rst,
          sel => sel,
          result => result
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
	-- First test arctan
		x_in <= "0010100000";
		y_in <= "0010000000";
		rst <= '0';
		sel <= '0';
	wait for 300 ns;
		rst <= '1';
	wait for 200 ns;
	
	
	
	-- Second test exp 
		input_phase <= "0001001110";
		rst <= '0';
		sel <= '1';
	wait for 300 ns;
		rst <= '1';
	wait for 200 ns;
		input_phase <= "0000001100";
		rst <= '0';
		sel <= '1';
		
		wait for 300 ns;
		rst <= '1';
	wait for 200 ns;
		input_phase <= "0001000000";
		rst <= '0';
		sel <= '1';
		
	wait;
   end process;

END;
