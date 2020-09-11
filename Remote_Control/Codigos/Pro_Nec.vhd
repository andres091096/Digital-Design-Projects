
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.NUMERIC_STD.all;


entity Clic_vid_uti is
    generic(n : positive :=8);
    Port ( RESET    : in STD_LOGIC;
	        CLOCK    : in STD_LOGIC;
			  ENABLE   : in STD_LOGIC;
			  Control  : in STD_LOGIC_VECTOR(7 downto 0);
           Cl_out   : out STD_LOGIC);
			  
end Clic_vid_uti;	

architecture Behavioral of Clic_vid_uti is
 signal q       : STD_LOGIC_VECTOR(20 downto 0) :=(others => '0');
 signal compara : STD_LOGIC;
 signal masl,d  : STD_LOGIC_VECTOR(20 downto 0);
 signal valor   : STD_LOGIC_VECTOR(n-1 downto 0);
 
 signal ciclo1, ciclo2, ciclo3, ciclo4,ciclo5, ciclo6, ciclo7, ciclo8, ciclo9, ciclo10, 
        ciclo11, ciclo12, ciclo13, ciclo14  : STD_LOGIC;
 signal max     : STD_LOGIC_VECTOR(20 downto 0);
begin

-- Multiplexor para entrada de frecuencia --
max <= conv_std_logic_vector (1999999,21);
-- --------------------------------------------

comparador1: compara <= '1' when q >= Max else '0';
sumador    : masl    <= q+1;
mux_d      : d       <= masl when compara = '0' else (others => '0');


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
		
-- Comparador adicional -- 

comparador2 : ciclo1  <= '0' when q >= conv_std_logic_vector (70000,21)  else '1';  --   T=0.7ms   --0°
comparador3 : ciclo2  <= '0' when q >= conv_std_logic_vector (85000,21)  else '1';  --    T=0.85ms  --15°
comparador4 : ciclo3  <= '0' when q >= conv_std_logic_vector (100000,21) else '1';  --   T=1ms     --30°
comparador5 : ciclo4  <= '0' when q >= conv_std_logic_vector (115000,21) else '1'; 	--	  T=1.15ms  --45°
comparador6 : ciclo5  <= '0' when q >= conv_std_logic_vector (130000,21) else '1'; 	--	  T=1.30ms	--60°
comparador7 : ciclo6  <= '0' when q >= conv_std_logic_vector (145000,21) else '1'; 	--	  T=1.45ms	--75°	
comparador8 : ciclo7  <= '0' when q >= conv_std_logic_vector (160000,21) else '1'; 	--   T=1.60ms  --90°
comparador9 : ciclo8  <= '0' when q >= conv_std_logic_vector (175000,21) else '1';  --   T=1.75ms  --105°
comparador10: ciclo9  <= '0' when q >= conv_std_logic_vector (190000,21) else '1';  --   T=1.90ms  --120°
comparador11: ciclo10 <= '0' when q >= conv_std_logic_vector (205000,21) else '1';  --   T=2.05ms  --135°
comparador12: ciclo11 <= '0' when q >= conv_std_logic_vector (220000,21) else '1';  --   T=2.2ms   --150°
comparador13: ciclo12 <= '0' when q >= conv_std_logic_vector (235000,21) else '1';  --   T=2.35ms  --165°
comparador14: ciclo13 <= '0' when q >= conv_std_logic_vector (260000,21) else '1';  --   T=2.6ms   --180°
comparador15: ciclo14 <= '0' when q >= conv_std_logic_vector (75000,21)  else '1';  --   T=0.75ms   --5°
--------------------------------------------------------

-- Multiplexor para la salidas ---
with Control select
   Cl_out <= 
           	 ciclo1  when "0000000000001",
				 ciclo2  when "0000000000010",
				 ciclo3  when "0000000000100",
           	 ciclo4  when "0000000001000",
				 ciclo5  when "0000000010000",
				 ciclo6  when "0000000100000",
           	 ciclo7  when "0000001000000",
				 ciclo8  when "0000010000000",
				 ciclo9  when "0000100000000",
           	 ciclo10 when "0001000000000",
				 ciclo11 when "0010000000000",
				 ciclo12 when "0100000000000",
				 ciclo13 when others;
				 
-----------------------------------
		 
end Behavioral;

