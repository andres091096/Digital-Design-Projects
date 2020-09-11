
-- VHDL Instantiation Created from source file contador_variab.vhd -- 14:54:04 02/06/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT contador_variab
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		MAX_CNT : IN std_logic_vector(2 downto 0);          
		COUNT : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_contador_variab: contador_variab PORT MAP(
		CLOCK => ,
		RESET => ,
		ENABLE => ,
		MAX_CNT => ,
		COUNT => 
	);


