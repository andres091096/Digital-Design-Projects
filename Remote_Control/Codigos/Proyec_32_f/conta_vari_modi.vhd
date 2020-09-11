----------------------------------------------------------------------------------
-- CONTADOR  n bits, modulo variable
-- Numero maximo de Conteo: modulo-1
-- Modificado para que tenga una salida del comparador para usar en reloj
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity contador_variab is
    generic(n : positive :=3);
	 Port ( CLOCK    : in  STD_LOGIC;
           RESET     : in  STD_LOGIC;
           ENABLE    : in  STD_LOGIC;
           MAX_CNT   : in  STD_LOGIC_VECTOR (n-1 downto 0);
 	        end_COUNT : out STD_LOGIC);
end contador_variab;

architecture modulo_variable of contador_variab is
 signal   q       : STD_LOGIC_VECTOR(n-1 downto 0) :=(others => '0');
 signal   compara,salida : STD_LOGIC;
 constant number  : STD_LOGIC_VECTOR(n-1 downto 0) := "00000000000000000000011";
 signal   masl,d  : STD_LOGIC_VECTOR(n-1 downto 0);
begin

comparador  : salida  <= '1' when q  = number  else '0';
comparador2 : compara <= '1' when q >= MAX_CNT else '0';
sumador     : masl    <= q+1;
mux_d       : d       <= masl when compara = '0' else (others => '0');

registro: process(CLOCK)
          begin
           if rising_edge(CLOCK) then
             if RESET = '1' then
               q <= (others=> '0');
             elsif ENABLE = '1' then
               q <= d;
             else
               q <= q;
             end if;
           end if;
          end process;
			
     end_COUNT <= salida;		 

end modulo_variable ;

