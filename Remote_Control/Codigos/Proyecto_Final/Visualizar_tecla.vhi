
-- VHDL Instantiation Created from source file Visualizar_tecla.vhd -- 01:59:45 02/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Visualizar_tecla
	PORT(
		CLK : IN std_logic;
		Sig : IN std_logic;          
		sig_div : OUT std_logic;
		Num : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_Visualizar_tecla: Visualizar_tecla PORT MAP(
		CLK => ,
		Sig => ,
		sig_div => ,
		Num => 
	);


