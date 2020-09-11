----------------------------------------------------------------------------------
-------------------- PROYECTO DIGITALES FINAL ------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Esquema_Final is
    Port ( CLOCK   : in   STD_LOGIC;
	        Sig     : in   STD_LOGIC;
			  SW      : in   STD_LOGIC;
           PWM     : out  STD_LOGIC;
           led     : out  STD_LOGIC_VECTOR (15 downto 0);
           Anodos  : out  STD_LOGIC_VECTOR (7 downto 0);
           Catodos : out  STD_LOGIC_VECTOR (6 downto 0));
end Esquema_Final;

architecture Behavioral of Esquema_Final is
signal reg_test : STD_LOGIC_VECTOR ( 31 downto 0);
signal sig_div : STD_LOGIC;
signal num      : STD_LOGIC_VECTOR ( 4 downto  0);
signal control  : STD_LOGIC_VECTOR ( 12 downto 0);
signal Num1     : STD_LOGIC_VECTOR ( 4 downto 0);
signal Num2     : STD_LOGIC_VECTOR ( 4 downto 0);
signal Num3     : STD_LOGIC_VECTOR ( 4 downto 0);
signal tres_num : STD_LOGIC_VECTOR ( 1 downto 0); 
signal Borrar   : STD_LOGIC;

COMPONENT Clic_vid_uti
generic(n : positive :=8);
PORT(
		RESET   : IN  std_logic;
		CLOCK   : IN  std_logic;
		ENABLE  : IN  std_logic;
		Control : IN  std_logic_vector(n-1 downto 0);          
		Cl_out  : OUT std_logic
		);
END COMPONENT;

COMPONENT Visualizar_tecla
PORT(
		CLK     : IN std_logic;
		Sig      : IN std_logic;          
		sig_div  : OUT std_logic;
      reg_test : out STD_LOGIC_VECTOR (31 downto 0);
		Num     : OUT std_logic_vector(4 downto 0)
		);
END COMPONENT;

COMPONENT guarda
PORT(
		CLOCK     : IN  std_logic;
		Sen       : IN  std_logic_vector(4 downto 0);
		div       : IN  std_logic;          
		Num1      : OUT std_logic_vector(4 downto 0);
		Num2      : OUT std_logic_vector(4 downto 0);
		Num3      : OUT std_logic_vector(4 downto 0);
		borrar    : OUT std_logic;
		Control_f : OUT std_logic_vector(12 downto 0);
		tres_num  : OUT STD_LOGIC_VECTOR (1 downto 0)
		);
END COMPONENT;

COMPONENT vcis_7s
PORT(
		CLOCK   : IN  std_logic;
		Num1    : IN  std_logic_vector(4 downto 0);
		Num2    : IN  std_logic_vector(4 downto 0);
		Num3    : IN  std_logic_vector(4 downto 0);
		tres_num: IN  STD_LOGIC_VECTOR (1 downto 0);
		borrar  : IN  std_logic;          
		Anod    : OUT std_logic_vector(7 downto 0);
		Catodos : OUT std_logic_vector(6 downto 0)
		);
END COMPONENT;



begin

Inst_Visualizar_tecla: Visualizar_tecla 
PORT MAP(
		CLK     => CLOCK,
		Sig     => Sig,
		sig_div => sig_div,
		reg_test => reg_test,
		Num     => Num
	);
Inst_guarda: guarda 
PORT MAP(
		CLOCK     => CLOCK,
		Sen       => Num,
		div       => sig_div,
		Num1      => Num1,
		Num2      => Num2,
		Num3      => Num3,
		borrar    => borrar,
		Control_f => control,
		tres_num  => tres_num
	);



Inst_Clic_vid_uti: Clic_vid_uti
generic map ( n => 13) 
PORT MAP(
		RESET   => '0',
		CLOCK   => CLOCK,
		ENABLE  => '1',
		Control => Control,
		Cl_out  => PWM
	);
	
Inst_vcis_7s: vcis_7s 
PORT MAP(
		CLOCK    => CLOCK ,
		Num1     => Num1,
		Num2     => Num2,
		Num3     => Num3,
		tres_num => tres_num,
		borrar  => borrar,
		Anod    => Anodos,
		Catodos => Catodos
	);

with sw select
led <= reg_test(15 downto 0) when '0',
       reg_test(31 downto 16) when others;
		 
end Behavioral;

