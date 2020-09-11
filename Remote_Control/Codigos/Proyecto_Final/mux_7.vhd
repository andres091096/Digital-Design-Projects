
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_7 is
    Port ( XYZ : in  STD_LOGIC_VECTOR (4 downto 0);
           S   : out  STD_LOGIC_VECTOR  (6 downto 0));
end mux_7;

architecture Behavioral of mux_7 is

begin
	with XYZ select
	S <= 
		  "0000001" when "00000",
		  "1001111" when "00001",
		  "0010010" when "00010" ,
		  "0000110" when "00011" ,
		  "1001100" when "00100" ,
		  "0100100" when "00101" ,
		  "0100000" when "00110" ,
		  "0001111" when "00111" ,
		  "0000000" when "01000" ,
		  "0001100" when "01001" ,
		  "0111000" when "11111" ,--Tecla Diferente
		  "0110000" when others;

end Behavioral;

