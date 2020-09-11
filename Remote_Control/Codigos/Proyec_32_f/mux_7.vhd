----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:54 11/10/2016 
-- Design Name: 
-- Module Name:    mux_7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_7 is
    Port ( XYZ : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (6 downto 0));
end mux_7;

architecture Behavioral of mux_7 is

begin
	with XYZ select
	S <= "0000001" when "0000",
		  "1001111" when "0001",
		  "0010010" when "0010",
		  "0000110" when "0011",
		  "1001100" when "0100",
		  "0100100" when "0101",
		  "0100000" when "0110",
		  "0001111" when "0111",
		  "0000000" when "1000",
		  "0001100" when "1001",
		  "0001000" when "1010",
		  "1100000" when "1011",
		  "0110001" when "1100",
		  "1000010" when "1101" ,
		  "0110000" when "1110",
		  "0111000" when others ;

end Behavioral;

