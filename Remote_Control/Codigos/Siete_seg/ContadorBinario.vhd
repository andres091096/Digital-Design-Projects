
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ContadorBinario is
    generic(n : positive :=3);
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           COUNT : out  STD_LOGIC_VECTOR (n-1 downto 0));
end ContadorBinario;

architecture Behavioral of ContadorBinario is
 signal q : STD_LOGIC_VECTOR (n-1 downto 0) := (others =>'0');
 signal d : STD_LOGIC_VECTOR (n-1 downto 0);
begin
 sumador: d <= q+1;
 registro: process(CLOCK)
           begin
			   if rising_edge(CLOCK) then
				 if RESET = '1' then
              q <= (others=>'0');
             elsif ENABLE = '1' then
              q <= d;
             else
              q <=q;
             end if;
            end if;				 
           end process;
 salidas: COUNT <= q;
end Behavioral;

