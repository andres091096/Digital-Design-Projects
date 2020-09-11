----------------------------------------------------------------------------------
------------------ Circuito Para Guardar Los Numeros -----------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;

entity guarda is
    Port ( CLOCK    : in   STD_LOGIC;
           Sen      : in   STD_LOGIC_VECTOR (4 downto 0);
           div      : in   STD_LOGIC;
           Num1     : out  STD_LOGIC_VECTOR (4 downto 0);
           Num2     : out  STD_LOGIC_VECTOR (4 downto 0);
           Num3     : out  STD_LOGIC_VECTOR (4 downto 0);
           borrar   : out  STD_LOGIC;
			  Control_f: out  STD_LOGIC_VECTOR(12 downto 0);
			  tres_num : out STD_LOGIC_VECTOR (1 downto 0)
			  );
end guarda;

architecture Behavioral of guarda is
signal dtt : STD_LOGIC_VECTOR (9 downto 0);
signal dt0,dt1,dt2,dt3,dt4 : STD_LOGIC_VECTOR (4 downto 0);
signal reset_reg, ok : STD_LOGIC;
signal guardar : STD_LOGIC := '1';
signal date : STD_LOGIC_VECTOR (4 downto 0);
signal div_new : STD_LOGIC;
signal control : STD_LOGIC_VECTOR(12 downto 0);
signal selec_reg : STD_LOGIC;
signal tres_num_out : STD_LOGIC_VECTOR ( 1 downto 0);
----------------------------------------------
COMPONENT registro_desplazamiento
   generic(n : positive := 8);
	PORT(
		CLOCK  : IN  std_logic;
		RESET  : IN  std_logic;
		ENABLE : IN  std_logic;
		D_IN   : IN  std_logic_vector(n-1 downto 0);          
		Q_OUT  : OUT std_logic_vector(n-1 downto 0)
		);
END COMPONENT;
COMPONENT Flanco_sub
PORT(
		Senal   : IN  std_logic;
		CLOCK   : IN  std_logic;
		ENABLE  : IN  std_logic;
		RESET   : IN  std_logic;          
		Edge_up : OUT std_logic
		);
END COMPONENT;

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



begin
date <= sen;
div_new <= div;
--- Primer Condicional Para Borrar
reset_reg <= '1' when  date = conv_std_logic_vector(12,5) else '0';

--- Mux1
with reset_reg select
	dt0 <= date     when '0',
	       "00000"  when others;
--- Segundo Condicional Para Ok
ok <= '1' when dt0 = conv_std_logic_vector(13,5) else '0';

-- Mux2
with ok select
	dt1 <= dt0     when '0',
	       "00000" when others;

-------- Registros ------------------------
registro1: registro_desplazamiento 
 generic map (n=>5)
 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => reset_reg,
		ENABLE => guardar,
		D_IN   => dt1,
		Q_OUT  => dt2 
	);

registro2: registro_desplazamiento 
 generic map (n=>5)
 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => reset_reg,
		ENABLE => guardar,
		D_IN   => dt2,
		Q_OUT  => dt3 
	);
	
registro3: registro_desplazamiento 
 generic map (n => 5 )
 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => reset_reg,
		ENABLE => guardar,
		D_IN   => dt3,
		Q_OUT  => dt4 
	);
	
--- And
guardar <= (div_new) and not(ok);

---Concatenacion


Control(0)  <= '1'  when dt3 < 1   and  dt4 =0   else '0';              --(0, 9)
Control(1)  <= '1'  when dt3 >= 1  and  dt3 < 2  and dt4 = 0  else '0'; --(10, 19)
Control(2)  <= '1'  when dt3 >= 2  and  dt3 <=3  and dt4 = 0  else '0'; --(20, 39)
Control(3)  <= '1'  when dt3 > 3   and  dt3 < 5  and dt4 = 0  else '0'; --(40, 49)
Control(4)  <= '1'  when dt3 >= 5  and  dt3 < 7  and dt4 = 0  else '0'; --(50, 69)
Control(5)  <= '1'  when dt3 >= 7  and  dt3 < 8  and dt4 = 0  else '0'; --(70, 79)
Control(6)  <= '1'  when dt3 >= 8  and  dt3 <= 9 and dt4 = 0  else '0'; --(80, 99)
Control(7)  <= '1'  when dt3 < 1   and  dt4  = 1 else '0';              --(100, 109)  
Control(8)  <= '1'  when dt3 >= 1  and  dt3 <= 2 and dt4 = 1  else '0'; --(110, 129)
Control(9)  <= '1'  when dt3 >= 3  and  dt3 < 4  and dt4 = 1  else '0'; --(130, 139)
Control(10) <= '1'  when dt3 >= 5  and  dt3 < 6  and dt4 = 1  else '0'; --(140, 159)
Control(11) <= '1'  when dt3 >= 6  and  dt3 < 7  and dt4 = 1  else '0'; --(160, 169)
Control(12) <= '1'  when dt3 >= 7  and  dt4>= 1  else '0';              --(170, ...)









--- Registro Salida Final y Detector de Flanco -----------------
Flanco_Subida: Flanco_sub 
 PORT MAP(
		Senal   => ok,
		CLOCK   => CLOCK,
		ENABLE  => '1',
		RESET   => '0',
		Edge_up => selec_reg
	);

registro4: registro_desplazamiento 
 generic map (n=>13)
 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => '0',
		ENABLE => selec_reg,
		D_IN   => Control,
		Q_OUT  => Control_f 
	);
	
Inst_contador_variab: contador_variab
generic map (n=>2)	
PORT MAP(
		CLOCK   => CLOCK,
		RESET   => reset_reg,
		ENABLE  => guardar,
		MAX_CNT => conv_std_logic_vector(3,2),
		COUNT   => tres_num_out
	);

--- Salidas	
Num1   <= dt2;
Num2   <= dt3;
Num3   <= dt4;
borrar <= reset_reg;
tres_num<= tres_num_out;

end Behavioral;
