
-- VHDL Instantiation Created from source file Clic_vid_uti.vhd -- 02:02:44 02/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Clic_vid_uti
	PORT(
		RESET : IN std_logic;
		CLOCK : IN std_logic;
		ENABLE : IN std_logic;
		Control : IN std_logic_vector(7 downto 0);          
		Cl_out : OUT std_logic
		);
	END COMPONENT;

	Inst_Clic_vid_uti: Clic_vid_uti PORT MAP(
		RESET => ,
		CLOCK => ,
		ENABLE => ,
		Control => ,
		Cl_out => 
	);


