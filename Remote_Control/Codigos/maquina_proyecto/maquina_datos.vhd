
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maquina_datos is
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           sig   : in  STD_LOGIC;
           Date  : out STD_LOGIC;
           Save  : out STD_LOGIC
			  );
end maquina_datos;

architecture Behavioral of maquina_datos is

   type estados is (reposo, E1,E2,reset,espera,E3,cero,uno); 
   signal presente : estados :=reposo; 
	signal futuro   : estados;
	
COMPONENT div_frec
 PORT(
	CLOCK   : IN std_logic;
	RESET   : IN std_logic;
	ENABLE  : IN std_logic;
	MAX_CNT : IN std_logic_vector(2 downto 0);          
	CLK_OUT : OUT std_logic
		);
	END COMPONENT;
	


begin





 SYNC_PROC: process (CLOCK)
   begin
      if (rising_edge(CLOCK) then
         if (RESET = '1') then
            presente <= reposo;
         else
            presente <= futuro;
         end if;        
      end if;
   end process;
	
	
OUTPUT_DECODE: process (presente)
   begin
      --insert statements to decode internal output signals
      --below is simple example
      if state = st3_<name> then
         <output>_i <= '1';
      else
         <output>_i <= '0';
      end if;
   end process;



end Behavioral;

