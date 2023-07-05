
-- VHDL Instantiation Created from source file Top.vhd -- 18:31:13 06/13/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Top
	PORT(
		input_phase : IN std_logic_vector(9 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;
		sel : IN std_logic;          
		result : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_Top: Top PORT MAP(
		input_phase => ,
		clk => ,
		rst => ,
		sel => ,
		result => 
	);


