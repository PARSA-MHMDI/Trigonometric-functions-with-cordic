
-- VHDL Instantiation Created from source file MUX_2X1.vhd -- 18:32:03 06/13/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX_2X1
	PORT(
		input1 : IN std_logic_vector(9 downto 0);
		input2 : IN std_logic_vector(9 downto 0);
		sel : IN std_logic;
		clk : IN std_logic;          
		output : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_MUX_2X1: MUX_2X1 PORT MAP(
		input1 => ,
		input2 => ,
		sel => ,
		clk => ,
		output => 
	);


