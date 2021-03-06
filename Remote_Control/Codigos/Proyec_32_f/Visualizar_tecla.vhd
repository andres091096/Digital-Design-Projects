

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Visualizar_tecla is
    Port ( CLK     : in  STD_LOGIC;
           Sig     : in  STD_LOGIC;
			  sig_div : out STD_LOGIC;
           Num     : out STD_LOGIC_VECTOR(4 downto 0 )
			  );
end Visualizar_tecla;

architecture Behavioral of Visualizar_tecla is
signal sig_d   : STD_LOGIC;
signal n_sig_d : STD_LOGIC;
COMPONENT fsm_senal
PORT(
		clock : IN std_logic;
		sig   : IN std_logic;
		reset : IN std_logic;          
		date  : OUT std_logic;
		enew  : OUT std_logic;
		repet : OUT std_logic;
		save  : OUT std_logic
		);
END COMPONENT;

COMPONENT contador_variab
generic(n : positive :=3);
PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		MAX_CNT : IN std_logic_vector(n-1 downto 0);          
		end_COUNT : OUT std_logic
		);
END COMPONENT;


COMPONENT Teclas
PORT(
		CLOCK   : IN std_logic;
		RESET   : IN std_logic;
		ENABLE  : IN std_logic;
		S_IN    : IN std_logic;
      Repet   : in  STD_LOGIC;
      div    : out STD_LOGIC;		
		Q_OUT   : OUT std_logic_vector(4 downto 0)
		);
END COMPONENT;

signal date_s, enew_s, repet_s, save_s, n_save_s : STD_LOGIC;
begin


maquina: fsm_senal PORT MAP(
		clock => CLK,
		sig => Sig,
		reset => '0',
		date => date_s,
		enew => enew_s,
		repet => repet_s,
		save => save_s
	);


n_save_s <= not(save_s);

tec: Teclas PORT MAP(
		CLOCK  => CLK,
		RESET  => enew_s,
		ENABLE => n_save_s,
		S_IN   => date_s,
		Repet  => repet_s,
		div    => sig_d,
		Q_OUT  => Num
	);
	
----------------------------------------
n_sig_d <= not(sig_d);

contador_div: contador_variab 
generic map ( n=> 23)
PORT MAP(
		CLOCK     => CLK,
		RESET     => n_sig_d,
		ENABLE    => '1',
		MAX_CNT   => conv_std_logic_vector(5000000,23),
		end_COUNT => sig_div
	);



end Behavioral;

