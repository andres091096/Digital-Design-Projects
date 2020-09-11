----------------------------------------------------------------------------------
--Detector de flancos de subida
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flanco_sub is
    Port ( Senal   : in  STD_LOGIC;
           CLOCK   : in  STD_LOGIC;
           ENABLE  : in  STD_LOGIC;
           RESET   : in  STD_LOGIC;
           Edge_up : out STD_LOGIC);
end Flanco_sub;

architecture Behavioral of Flanco_sub is
signal q_out : STD_LOGIC;
	COMPONENT flipflopD
	PORT(
		CLOCK  : IN std_logic;
		RESET  : IN std_logic;
		ENABLE : IN std_logic;
		D      : IN std_logic;          
		Q_out  : OUT std_logic
		);
	END COMPONENT;

begin
	circuit_1: flipflopD 
	 PORT MAP(
		CLOCK  => CLOCK,
		RESET  => RESET,
		ENABLE => ENABLE,
		D      => senal,
		Q_out  => q_out 
	);

Edge_up <= Senal and NOT(q_out);
end Behavioral;

