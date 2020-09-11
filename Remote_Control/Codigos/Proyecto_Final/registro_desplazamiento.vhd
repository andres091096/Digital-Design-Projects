library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_desplazamiento is
    generic(n : positive := 8);
    Port ( CLOCK  : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           D_IN   : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q_OUT  : out STD_LOGIC_VECTOR (n-1 downto 0)
			  );
end registro_desplazamiento;

architecture Behavioral of registro_desplazamiento is
signal reg : STD_LOGIC_VECTOR(n-1 downto 0):=(others => '0');

begin
PROCESS(CLOCK)
begin 
 if rising_edge (CLOCK) then 
	if RESET = '1' then 
	   reg <=  (others => '0');
	elsif ENABLE = '1' then 
	   reg <= D_IN;
	else
	   reg <= reg;
	end if;
 end if;
END PROCESS;

Q_OUT <= reg;





end Behavioral;

