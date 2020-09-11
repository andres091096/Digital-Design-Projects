
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

			

entity Cont is
	generic(n: positive :=25);
    Port ( CLOCK   : in  STD_LOGIC;
           RESET   : in  STD_LOGIC;
           ENABLE  : in  STD_LOGIC;
           CLK_OUT : out  STD_LOGIC;
			  MAX_CNT : in STD_LOGIC_VECTOR(n-1 downto 0) 
			  );
end Cont;

architecture conta of Cont is
	
	signal q: STD_LOGIC_VECTOR(n-1 downto 0) :=(others => '0');
	signal compara: STD_LOGIC;
	signal mas1,d: STD_LOGIC_VECTOR(n-1 downto 0);
	signal q_int: STD_LOGIC := '0';

begin
comparador: compara <='1' when q >= MAX_CNT else '0';
sumador: mas1 <= q + 1;
muxd: d <= mas1 when compara= '0' else (others => '0');

registro: process(CLOCK)
			begin
				if rising_edge(CLOCK) then
					if RESET= '1' then
						q <= (others => '0');
					elsif ENABLE = '1' then
						q <= d;
					else
						q <=q;
					end if;
				end if;
			end process;
salidas: CLK_OUT <= compara;

end conta;