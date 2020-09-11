
-- VHDL Instantiation Created from source file registro_desplazamiento.vhd -- 22:57:52 02/05/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registro_desplazamiento
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		D_IN : IN std_logic_vector(7 downto 0);          
		Q_OUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_registro_desplazamiento: registro_desplazamiento PORT MAP(
		CLOCK => ,
		RESET => ,
		ENABLE => ,
		D_IN => ,
		Q_OUT => 
	);


