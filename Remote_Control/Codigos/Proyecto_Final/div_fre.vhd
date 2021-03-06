----------------------------------------------------------------------------------
--DESCRIPCION: Divisores de frecuencia
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity div_frec is
    generic(n : positive :=3);
	 Port ( CLOCK    : in  STD_LOGIC;
           RESET    : in  STD_LOGIC;
           ENABLE   : in  STD_LOGIC;
           MAX_CNT  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           CLK_OUT  : out STD_LOGIC
			  );
end div_frec;

architecture modulo_variable of div_frec is
 signal q       : STD_LOGIC_VECTOR(n-1 downto 0) :=(others => '0');
 signal compara : STD_LOGIC;
 signal masl,d  : STD_LOGIC_VECTOR(n-1 downto 0);
begin
comparador: compara <= '1' when q >= MAX_CNT else '0';
sumador   : masl    <= q+1;	
mux_d     : d       <= masl when compara = '0' else (others => '0');

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
			 
salidas:  CLK_OUT <= compara;			 

end modulo_variable ;

