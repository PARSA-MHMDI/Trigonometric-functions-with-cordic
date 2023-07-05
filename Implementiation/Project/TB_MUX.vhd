LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

  
ENTITY TB_MUX IS
END TB_MUX;
 
ARCHITECTURE behavior OF TB_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_2X1
    PORT(
         input1 : IN  std_logic_vector(9 downto 0);
         input2 : IN  std_logic_vector(9 downto 0);
         sel : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input1 : std_logic_vector(9 downto 0) := (others => '0');
   signal input2 : std_logic_vector(9 downto 0) := (others => '0');
   signal sel : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_2X1 PORT MAP (
          input1 => input1,
          input2 => input2,
          sel => sel,
          clk => clk,
          output => output
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

	input1 <= "0000000000";
	input2 <= "1111111111";
	wait for 10 ns;
	
	sel <= '0';
	
	wait for 200 ns;
	
	sel <= '1';

      wait;
   end process;

END;
