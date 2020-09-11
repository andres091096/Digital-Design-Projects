
-- VHDL Instantiation Created from source file guarda.vhd -- 02:00:45 02/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT guarda
	PORT(
		CLOCK : IN std_logic;
		Sen : IN std_logic_vector(4 downto 0);
		div : IN std_logic;          
		Num1 : OUT std_logic_vector(4 downto 0);
		Num2 : OUT std_logic_vector(4 downto 0);
		Num3 : OUT std_logic_vector(4 downto 0);
		borrar : OUT std_logic;
		Control_f : OUT std_logic_vector(12 downto 0)
		);
	END COMPONENT;

	Inst_guarda: guarda PORT MAP(
		CLOCK => ,
		Sen => ,
		div => ,
		Num1 => ,
		Num2 => ,
		Num3 => ,
		borrar => ,
		Control_f => 
	);


