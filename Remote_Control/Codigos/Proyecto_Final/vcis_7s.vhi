
-- VHDL Instantiation Created from source file vcis_7s.vhd -- 02:02:33 02/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vcis_7s
	PORT(
		CLOCK : IN std_logic;
		Num1 : IN std_logic_vector(4 downto 0);
		Num2 : IN std_logic_vector(4 downto 0);
		Num3 : IN std_logic_vector(4 downto 0);
		borrar : IN std_logic;          
		Anod : OUT std_logic_vector(7 downto 0);
		Catodos : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_vcis_7s: vcis_7s PORT MAP(
		CLOCK => ,
		Num1 => ,
		Num2 => ,
		Num3 => ,
		borrar => ,
		Anod => ,
		Catodos => 
	);


