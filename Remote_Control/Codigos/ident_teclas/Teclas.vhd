library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity Teclas is
    Port ( CLOCK  : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           S_IN   : in  STD_LOGIC;
           Q_OUT  : out STD_LOGIC_VECTOR (6 downto 0));
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
	
signal control: STD_LOGIC; 
signal q_t    : std_logic_vector(31 downto 0) := (others => '0');
begin

desplaza: dd <= reg(30 downto 0) & S_IN;

divisor: div_frec 
generic map (n => 6)
PORT MAP(
		CLOCK   => CLOCK,
		RESET   => RESET,
		ENABLE  => ENABLE,
		MAX_CNT => conv_std_logic_vector(32,6),
		CLK_OUT => control
	);


registro: registro_desplazamiento 
  generic map(n => 32)
  PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => ENABLE,
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
		RESET  => RESET,
		ENABLE => control ,
		D_IN   => reg,
		Q_OUT  => repetido 
	);
---------------------------------------------------------------------------

q_t <= reg when control = '1' else repetido;

---------------------------------------------------------------------------
with q_t select
Q_OUT   <= "1001111" when "11100001011110101000000001111111",
			  "0010010" when "11100001011110100100000010111111",
			  "0000110" when "11100001011110101100000000111111",
			  "1001100" when "11100001011110100010000011011111",
			  "0100100" when "11100001011110101010000001011111",
			  "0100000" when "11100001011110100110000010011111",
			  "0001111" when "11100001011110101110000000011111",
			  "0000000" when "11100001011110100001000011101111",
			  "0001100" when "11100001011110101001000001101111",
			  "0000001" when "11100001011110100000000011111111",
			  "1100000" when "11100001011110101000100001110111",
			  "0110001" when "01010000000000000010100011010111",
			  "0111000" when others;
 
end Behavioral;

