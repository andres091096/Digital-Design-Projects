----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:38 11/10/2016 
-- Design Name: 
-- Module Name:    Visualizar_bcd - Behavioral 
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

entity Visualizar_bcd is
    Port ( A       : in  STD_LOGIC_VECTOR (3 downto 0);
           B       : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin     : in  STD_LOGIC;
           Control : in  STD_LOGIC;
           Seg     : out STD_LOGIC_VECTOR (6 downto 0);
           Anodo   : out STD_LOGIC_VECTOR (7 downto 0));
end Visualizar_bcd;

architecture Behavioral of Visualizar_bcd is
 signal Cout_t  : STD_LOGIC_VECTOR (3 downto 0); 
 signal Unidad  : STD_LOGIC_VECTOR (3 downto 0);
 signal Number  : STD_LOGIC_VECTOR (3 downto 0); 
 signal Cout_bc : STD_LOGIC;
 
 COMPONENT mux_2
    Port ( D0 : in  STD_LOGIC_VECTOR(3 downto 0);
           D1 : in  STD_LOGIC_VECTOR(3 downto 0);
           S  : in  STD_LOGIC;
           Y  : out  STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
	
 COMPONENT sumador_bcd
	PORT(
		AA : IN std_logic_vector(3 downto 0);
		BB : IN std_logic_vector(3 downto 0);
		Cin_bcd : IN std_logic;          
		Cout_bcd : OUT std_logic;
		SS : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
 COMPONENT mux_7
	PORT(
		XYZ : IN std_logic_vector(3 downto 0);          
		S   : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

begin
	suma_bcd: sumador_bcd PORT MAP(
		AA       => A,
		BB       => B,
		Cin_bcd  => Cin ,
		Cout_bcd => Cout_bc,
		SS       => Unidad 
	);

 Cout_t <= "000" & Cout_bc;
	
	circuito_1: mux_2 PORT MAP(
		D0 => Unidad,
		D1 => Cout_t,
		S  => Control,
		Y  => Number 
	);
		
	ver_num : mux_7 PORT MAP(
		XYZ => Number,
		S   => Seg 
	);
	
	
	with Control select
	 Anodo <= "11111110" when '0',
				 "11111101" when others;

	
	
  
   


end Behavioral;

