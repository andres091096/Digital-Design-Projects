LIBRARY ieee;
USE ieee.std_logic_1164.ALL;



  
ENTITY simulacion_SIPO IS
END simulacion_SIPO;
 
ARCHITECTURE behavior OF simulacion_SIPO IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Teclas
    PORT(
         CLOCK  : IN  std_logic;
         RESET  : IN  std_logic;
         ENABLE : IN  std_logic;
         S_IN   : IN  std_logic;
         Q_OUT  : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal ENABLE : std_logic := '0';
   signal S_IN : std_logic := '0';

 	--Outputs
   signal Q_OUT : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Teclas PORT MAP (
          CLOCK => CLOCK,
          RESET => RESET,
          ENABLE => ENABLE,
          S_IN => S_IN,
          Q_OUT => Q_OUT
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      --1
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--2
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--3
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--4
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--5
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--6
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--7
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--8
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--9
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--10
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--11
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--12
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--13
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--14
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--15
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--16
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--17
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--18
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--19
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--20
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--21
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--22
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--23
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--24
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--25
		S_IN   <= '0';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--26
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--27
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--28
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--29
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--30
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--31
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;
		--32
		S_IN   <= '1';
		ENABLE <= '1';
      wait for CLOCK_period*1;
		ENABLE   <= '0';
		wait for CLOCK_period*4;		
      
		wait for CLOCK_period*1;
		ENABLE <= '1';
		
				



      -- insert stimulus here 

      wait;
   end process;

END;
