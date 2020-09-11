
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Sec_4_num is
    Port ( Uni    : in STD_LOGIC_VECTOR(3 downto 0);
	        Dec    : in STD_LOGIC_VECTOR(3 downto 0);
			  Cen    : in STD_LOGIC_VECTOR(3 downto 0);
			  UM     : in STD_LOGIC_VECTOR(3 downto 0);
	        ENABLE : in  STD_LOGIC; 
	        CLOCK  : in  STD_LOGIC; 
			  RESET  : in  STD_LOGIC;
           Anod   : out  STD_LOGIC_VECTOR(7 downto 0);
			  Cat    : out  STD_LOGIC_VECTOR(6 downto 0)
			  );
			  
end Sec_4_num;

architecture Behavioral of Sec_4_num is
signal glitch  : STD_LOGIC;
signal control : STD_LOGIC_VECTOR (1 downto 0);	
signal out_mux : STD_LOGIC_VECTOR (3 downto 0);
  COMPONENT ContadorBinario
	generic(n : positive :=2);
	PORT(
		CLOCK  : IN std_logic;
		RESET  : IN std_logic;
		ENABLE : IN std_logic;          
		COUNT  : OUT std_logic_vector(n-1 downto 0)
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
		XYZ : IN std_logic_vector(3 downto 0);          
		S   : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	

begin

	circ_1: Cont 
	generic map(n=>19)
	PORT MAP(
		CLOCK   => CLOCK,
		RESET   => RESET,
		ENABLE  => ENABLE,
		CLK_OUT => glitch,
		MAX_CNT => conv_std_logic_vector(500000,19)
	);
	
	contador: ContadorBinario 
	generic map (n=>2)
	PORT MAP(
		CLOCK  => CLOCK,
		RESET  => RESET,
		ENABLE => glitch,
		COUNT  => Control
	);
	
 with control select
  out_mux <= Uni when "00",
             Dec when "01",
				 Cen when "10",
				 UM  when others;
--Anodos
 with control select
  Anod <=    "11111110" when "00",
             "11111101" when "01",
				 "11111011" when "10",
				 "11110111" when others;
--Catodos
	box_cat: mux_7 PORT MAP(
		XYZ => out_mux,
		S   => Cat
	);

end Behavioral;

