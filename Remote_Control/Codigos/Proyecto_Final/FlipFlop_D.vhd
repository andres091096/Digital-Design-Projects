----------------------------------------------------------------
--Flip Flop Tipo D con entrada de Asincrona
---------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY flipflopD IS
  PORT( CLOCK : IN std_logic;
        RESET : IN std_logic;
        ENABLE: IN std_logic;
        D     : IN std_logic;
        Q_out : OUT std_logic
       );
END flipflopD;

ARCHITECTURE tipo_D OF flipflopD IS
 signal q_int : std_logic := '0';

BEGIN
 PROCESS (CLOCK)
  BEGIN
   IF rising_edge(CLOCK) THEN
    IF RESET = '1' THEN
      q_int <= '0';
		ELSIF ENABLE ='1' THEN 
	    q_int <= D;
    ELSE
       q_int <= q_int;
    END IF;
   END IF;
 END PROCESS;

 Q_out <= q_int;

END tipo_D;
   