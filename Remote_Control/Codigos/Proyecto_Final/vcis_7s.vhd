
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;



entity vcis_7s is
    Port ( CLOCK   : in  STD_LOGIC;
	        Num1    : in  STD_LOGIC_VECTOR (4 downto 0);
           Num2    : in  STD_LOGIC_VECTOR (4 downto 0);
           Num3    : in  STD_LOGIC_VECTOR (4 downto 0);
			  tres_num: in  STD_LOGIC_VECTOR (1 downto 0);
           borrar  : in  STD_LOGIC;
           Anod    : out  STD_LOGIC_VECTOR (7 downto 0);
           Catodos : out  STD_LOGIC_VECTOR (6 downto 0));
end vcis_7s;

	architecture Behavioral of vcis_7s is

signal glitch   : STD_LOGIC;
signal control  : STD_LOGIC_VECTOR (1 downto 0);	
signal out_mux  : STD_LOGIC_VECTOR (4 downto 0);
signal fin_an1  : STD_LOGIC_VECTOR (2 downto 0);
signal fin_an2  : STD_LOGIC_VECTOR (2 downto 0);
signal fin_an3  : STD_LOGIC_VECTOR (2 downto 0);


	COMPONENT contador_variab
	generic(n : positive :=3);
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		MAX_CNT : IN std_logic_vector(n-1 downto 0);          
		COUNT : OUT STD_LOGIC_VECTOR (n-1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Cont
	generic(n: positive :=2);
	PORT(
		CLOCK   : IN std_logic;
		RESET   : IN std_logic;
		ENABLE  : IN std_logic;          
		CLK_OUT : OUT std_logic;
		MAX_CNT : IN STD_LOGIC_VECTOR(n-1 downto 0)
		);
	END COMPONENT;
	
	
	COMPONENT mux_7
	PORT(
		XYZ : IN std_logic_vector (4 downto 0);          
		S   : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

begin

circ_1: Cont 
	generic map(n=>19)
	PORT MAP(
		CLOCK   => CLOCK,
		RESET   => '0',
		ENABLE  => '1',
		CLK_OUT => glitch,
		MAX_CNT => conv_std_logic_vector(500000,19)
	);

	Inst_contador_variab: contador_variab
   generic map (n=>2)	
	PORT MAP(
		CLOCK   => CLOCK,
		RESET   => '0',
		ENABLE  => glitch,
		MAX_CNT => conv_std_logic_vector(3,2),
		COUNT   => Control
	);


fin_an1 <= "111" when  borrar = '1' else "110";
fin_an2 <= "111" when (tres_num  = "01" and Num2 = "00") or (tres_num = "00")  or borrar = '1' else "101"; 
fin_an3 <= "111" when (tres_num <= "01") or (tres_num = "10" and Num3 = "00")  or borrar = '1' else "011"; 




	
 with control select
  out_mux <= Num1 when "00",
             Num2 when "01",
				 Num3 when others;
				  
--Anodos
 with control select
  Anod <=    "11111"&fin_an1 when "00",
             "11111"&fin_an2 when "01",
				 "11111"&fin_an3 when others;
--Catodos
cat: mux_7 PORT MAP(
		XYZ => out_mux,
		S   => Catodos
	);




end Behavioral;

