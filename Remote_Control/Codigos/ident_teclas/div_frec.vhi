
-- VHDL Instantiation Created from source file div_frec.vhd -- 10:48:40 01/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT div_frec
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		MAX_CNT : IN std_logic_vector(2 downto 0);          
		CLK_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_div_frec: div_frec PORT MAP(
		CLOCK => ,
		RESET => ,
		ENABLE => ,
		MAX_CNT => ,
		CLK_OUT => 
	);


