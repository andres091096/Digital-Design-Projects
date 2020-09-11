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
			  Control_f: out  STD_LOGIC_VECTOR(12 downto 0)
			  );
end guarda;

architecture Behavioral of guarda is
signal dt0,dt1,dt2,dt3,dt4 : STD_LOGIC_VECTOR (4 downto 0);
signal reset_reg, ok, guardar : STD_LOGIC;
signal date : STD_LOGIC_VECTOR (4 downto 0);
signal div_new : STD_LOGIC;
signal D2,D3,D4,DT : integer;
signal control : STD_LOGIC_VECTOR(12 downto 0);
signal selec_reg : STD_LOGIC;
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
--- And
guardar <= (div_new) and not(ok);
-------- Registros ------------------------
registro1: registro_desplazamiento 
 generic map (n => 5 )
 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => reset_reg,
		ENABLE => guardar,
		D_IN   => dt1,
		Q_OUT  => dt2 
	);

registro2: registro_desplazamiento 
 generic map (n => 5 )
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
	

---Concatenacion
D2 <= conv_integer(dt2);
D3 <= conv_integer(dt3);
D4 <= conv_integer(dt4);
DT <= D4*100 + D3*10 + D2*1;

-- Comparador de Ángulos --

Control(0)  <= '1'  when DT >= 0   and  DT < 15  else '0';
Control(1)  <= '1'  when DT >= 15  and  DT < 30  else '0';
Control(2)  <= '1'  when DT >= 30  and  DT < 45  else '0';
Control(3)  <= '1'  when DT >= 45  and  DT < 60  else '0';
Control(4)  <= '1'  when DT >= 60  and  DT < 75  else '0';
Control(5)  <= '1'  when DT >= 75  and  DT < 90  else '0';
Control(6)  <= '1'  when DT >= 90  and  DT < 105 else '0';
Control(7)  <= '1'  when DT >= 105 and  DT < 120 else '0';
Control(8)  <= '1'  when DT >= 120 and  DT < 135 else '0';
Control(9)  <= '1'  when DT >= 135 and DT < 150 else '0';
Control(10) <= '1'  when DT >= 150 and  DT < 165 else '0';
Control(11) <= '1'  when DT >= 165 and  DT < 180 else '0';
Control(12) <= '1'  when DT >= 180  else '0';

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

--- Salidas	
Num1   <= dt2;
Num2   <= dt3;
Num3   <= dt4;
borrar <= reset_reg;

end Behavioral;

