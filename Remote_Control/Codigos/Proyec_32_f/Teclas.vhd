library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity Teclas is
    Port ( CLOCK  : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           S_IN   : in  STD_LOGIC;
			  Repet  : in  STD_LOGIC;
			  div    : out STD_LOGIC;
           Q_OUT  : out STD_LOGIC_VECTOR (4 downto 0));
end Teclas;

	architecture Behavioral of Teclas is

signal dd: STD_LOGIC_VECTOR ( 31 downto 0);

COMPONENT registro_desplazamiento
 GENERIC (n : positive := 8);
 PORT(
		CLOCK  : IN  std_logic;
		RESET  : IN  std_logic;
		ENABLE : IN  std_logic;
		D_IN   : IN  std_logic_vector(n-1 downto 0);          
		Q_OUT  : OUT std_logic_vector(n-1 downto 0)
		);
	END COMPONENT;
	
signal reg      : STD_LOGIC_VECTOR ( 31 downto 0);
signal repetido : STD_LOGIC_VECTOR ( 31 downto 0);
COMPONENT div_frec
  GENERIC (n : positive := 8);
	PORT(
		CLOCK   : IN  std_logic;
		RESET   : IN  std_logic;
		ENABLE  : IN  std_logic;
		MAX_CNT : IN  std_logic_vector(n-1 downto 0);          
		CLK_OUT : OUT std_logic
		);
	END COMPONENT; 
	
signal sig_div: STD_LOGIC; 
signal q_t    : std_logic_vector(31 downto 0) := (others => '0');
signal new_save : STD_LOGIC;

begin

desplaza: dd <= reg(30 downto 0) & S_IN;
-----------------------------------------------------------------------
--Divisor para la señal save-------------------------------------
-----------------------------------------------------------------------
div_save: div_frec 
generic map (n => 16)
PORT MAP(
		CLOCK   => CLOCK,
		RESET   => ENABLE,
		ENABLE  => '1',
		MAX_CNT => conv_std_logic_vector(40000,16),
		CLK_OUT => new_save
	);

-----------------------------------------------------------------------
divis: div_frec 
generic map (n => 6)
PORT MAP(
		CLOCK   => CLOCK,
		RESET   => RESET,
		ENABLE  => new_save,
		MAX_CNT => conv_std_logic_vector(32,6),
		CLK_OUT => sig_div
	);


registro: registro_desplazamiento 
  generic map(n => 32)
  PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => new_save,
		D_IN => dd,
		Q_OUT => reg
	);
	
--------------------------------------------------------------------------
--Regitro Para que mantenga el valor incluso con el codigo de repeticion--
--------------------------------------------------------------------------
	reg2: registro_desplazamiento 
	generic map(n => 32)
	PORT MAP(
		CLOCK  => CLOCK,
		RESET  => '0',
		ENABLE => sig_div,
		D_IN   => reg,
		Q_OUT  => repetido 
	);
---------------------------------------------------------------------------

q_t <= reg when not(not(sig_div)or Repet) = '1' else repetido;

---------------------------------------------------------------------------
--Salidas----

div <= sig_div;
with q_t select
Q_OUT   <= "00001" when "11100001011110101000000001111111",
			  "00010" when "11100001011110100100000010111111",
			  "00011" when "11100001011110101100000000111111",
			  "00100" when "11100001011110100010000011011111",
			  "00101" when "11100001011110101010000001011111",
			  "00110" when "11100001011110100110000010011111",
			  "00111" when "11100001011110101110000000011111",
			  "01000" when "11100001011110100001000011101111",
			  "01001" when "11100001011110101001000001101111",
			  "00000" when "11100001011110100000000011111111",
			  "01100" when "11100001011110101000100001110111",--BORRAR/PREV
			  "01101" when "01010000000000000010100011010111",--OK/TVAV
			  "01110" when "00000000000000000000000000000000",--Fila de ceros
			  "01111" when others;                            --Tecla dierente
 
end Behavioral;

