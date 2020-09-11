
-- VHDL Instantiation Created from source file fsm_senal.vhd -- 16:32:20 02/02/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT fsm_senal
	PORT(
		clock : IN std_logic;
		sig : IN std_logic;
		reset : IN std_logic;          
		date : OUT std_logic;
		enew : OUT std_logic;
		repet : OUT std_logic;
		save : OUT std_logic
		);
	END COMPONENT;

	Inst_fsm_senal: fsm_senal PORT MAP(
		clock => ,
		sig => ,
		reset => ,
		date => ,
		enew => ,
		repet => ,
		save => 
	);


