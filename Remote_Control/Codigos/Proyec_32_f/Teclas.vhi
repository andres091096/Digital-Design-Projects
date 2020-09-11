
-- VHDL Instantiation Created from source file Teclas.vhd -- 16:43:52 02/02/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Teclas
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		S_IN : IN std_logic;
		Repet : IN std_logic;          
		Q_OUT : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_Teclas: Teclas PORT MAP(
		CLOCK => ,
		RESET => ,
		ENABLE => ,
		S_IN => ,
		Repet => ,
		Q_OUT => 
	);


