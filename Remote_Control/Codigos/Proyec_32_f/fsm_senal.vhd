
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;



entity fsm_senal is
    Port ( clock,sig, reset   : in  STD_LOGIC;
           date  : out  STD_LOGIC;
           enew  : out  STD_LOGIC;
           repet : out  STD_LOGIC;
           save  : out  STD_LOGIC);
end fsm_senal;

architecture Behavioral of fsm_senal is
signal temp 		 : STD_LOGIC_VECTOR(18 downto 0);
signal reset_temp  : STD_LOGIC;
-- FSM---
   type estados is (inicio, e0, e1, uno, cero, rep,nuevo); 
   signal presente, futuro: estados := inicio;
   signal salidas : std_logic_vector(4 downto 0);

--CONTADOR BINARIO-------------------------------------
	COMPONENT ContadorBinario
	generic(n : positive :=3);
	PORT(
		CLOCK  : IN std_logic;
		RESET  : IN std_logic;
		ENABLE : IN std_logic;          
		COUNT  : OUT std_logic_vector(n-1 downto 0)
		);
	END COMPONENT;
begin
--------------------------------------------------------
	Inst_ContadorBinario: ContadorBinario 
	generic map(n =>19 )
	PORT MAP(
		CLOCK  => CLOCK ,
		RESET  => reset_temp,
		ENABLE =>'1' ,
		COUNT  => temp
	);
--------------------------------------------------------
--process---
  SYNC_PROC: process (clock)
  begin
    if (clock'event and clock = '1') then
      if (reset = '1') then
        presente <= inicio;
      else
        presente <= futuro;
      end if;        
    end if;
  end process;
--------------------------------------------------------
-- MOORE STATE MACHINE
with presente select
	 
	salidas <= b"0_0_0_1_0" when e0,
				  b"0_0_0_0_0" when e1,
				  b"0_1_0_1_0" when nuevo,
				  b"0_0_0_1_1" when cero,
				  b"1_0_0_1_1" when uno,
				  b"0_0_1_1_0" when rep,
				  b"0_0_0_1_0" when others;--inicio
				  
date       <= salidas(4);
enew       <= salidas(3);
repet      <= salidas(2);
reset_temp <= salidas(1);
save       <= salidas(0);

 NEXT_STATE_DECODE: process (presente, sig,temp)
  begin
    case (presente) is
      when inicio  =>	 if sig = '0' then
                              futuro <= e0;
                            else
                              futuro <= presente;
                            end if;


      when e0     =>	    if sig = '1' then
                              futuro <= e1;
                            else
                              futuro <= presente;
                            end if;

      when e1 		=>	       if sig= '0' and temp < conv_std_logic_vector(500000,19) and temp > conv_std_logic_vector(300000,19) then
                              futuro <= nuevo;
									 elsif sig='0' and temp < conv_std_logic_vector(200000,18) and temp > conv_std_logic_vector(60000,19) then 
										futuro <= uno;
									 elsif sig='0' and temp < conv_std_logic_vector(60000,19) then 
										futuro <= cero;
									 elsif sig='0' and temp < conv_std_logic_vector(300000,19) and temp > conv_std_logic_vector(210000,18) then
										futuro <= rep;
									 elsif sig='1' and temp > conv_std_logic_vector(500000,19) then
										futuro <= inicio;
                            else
                              futuro <= presente;
                            end if;

      when nuevo  =>		 if sig = '1' then
                              futuro <= e1;
                            else
                              futuro <= presente;
                            end if;

      when cero => 	    if sig = '1' then
                              futuro <= e1;
                            else
                              futuro <= presente;
                            end if;

      when uno =>  	    if sig = '1' then
                              futuro <= e1;
                            else
                              futuro <= presente;
                            end if;
               
		when rep =>   		 if sig = '1' then
                              futuro <= e1;
                            else
                              futuro <= presente;
                            end if;

      when others =>        futuro <= inicio;
    end case;      
  end process;


end Behavioral;

