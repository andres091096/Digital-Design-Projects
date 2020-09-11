
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;



entity vcis_7s is
    Port ( CLOCK   : in  STD_LOGIC;
	        Num1    : in  STD_LOGIC_VECTOR (4 downto 0);
           Num2    : in  STD_LOGIC_VECTOR (4 downto 0);
           Num3    : in  STD_LOGIC_VECTOR (4 downto 0);
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
		COUNT : OUT std_logic_vector(n-1 downto 0)
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
		CLOCK => CLOCK,
		RESET => '0',
		ENABLE => glitch,
		MAX_CNT => conv_std_logic_vector(3,2),
		COUNT => Control
	);


 with control select
  out_mux <= Num1 when "0000",
             Num2 when "0001",
				 Num3 when "0010",
				 Num4 when "0011",
				 Num5 when "0100",
				 Num6 when "0101",
				 Num7 when "0110",
				 Num8 when "0111",
				 Num9 when "1000",
				Num10 when "1001",
				Num11 when "1010",
				Num12 when "1011",
				Num13 when "1100",
				Num14 when "1101",
				Num15 when "1101",
				Num16 when "1110",
				Num17 when others;
--Cambiar la n del contador				
--Anodos (agrgar Mas Anodos 16)
 with control select
  Anod <=    "11111110" when "0000",
             "11111101" when "0001",
				 "11111011" when "0010",
				 "11110111" when "0011",
				 "11101111" when "0100",
--Catodos
cat: mux_7 PORT MAP(
		XYZ => out_mux,
		S   => Catodos
	);




end Behavioral;

