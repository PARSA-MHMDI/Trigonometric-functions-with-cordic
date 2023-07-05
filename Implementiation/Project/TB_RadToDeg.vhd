LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TB_RadToDeg IS
END TB_RadToDeg;
 
ARCHITECTURE behavior OF TB_RadToDeg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RadianToDegree
    PORT(
         radians : IN  std_logic_vector(9 downto 0);
         degrees : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal radians : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal degrees : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RadianToDegree PORT MAP (
          radians => radians,
          degrees => degrees
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	radians <= "0100000000";

	wait;
   end process;

END;
