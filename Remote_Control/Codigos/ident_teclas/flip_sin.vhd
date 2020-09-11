
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_sin is
    Port( CLOCK    : in  STD_LOGIC;
          RST      : in  STD_LOGIC;
          D        : in  STD_LOGIC;
          Q_out    : out  STD_LOGIC
			);
end flip_sin;

architecture ctrl_sinc of flip_sin is
signal q_int : std_logic := '0';
 
begin
PROCESS (CLOCK)
 BEGIN 
  If rising_edge(CLOCK) THEN
   If RST = '1' THEN
     q_int <= '0';
   ELSE 
     q_int <= D;
   END IF;
  END IF;
END PROCESS;

 Q_out <= q_int;
end ctrl_sinc;

