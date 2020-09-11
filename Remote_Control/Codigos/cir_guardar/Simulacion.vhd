
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Simulacion IS
END Simulacion;
 
ARCHITECTURE behavior OF Simulacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guarda
    PORT(
         CLOCK : IN  std_logic;
         Sen : IN  std_logic_vector(4 downto 0);
         div : IN  std_logic;
         Num1 : OUT  std_logic_vector(4 downto 0);
         Num2 : OUT  std_logic_vector(4 downto 0);
         Num3 : OUT  std_logic_vector(4 downto 0);
         borrar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal Sen : std_logic_vector(4 downto 0) := (others => '0');
   signal div : std_logic := '0';

 	--Outputs
   signal Num1 : std_logic_vector(4 downto 0);
   signal Num2 : std_logic_vector(4 downto 0);
   signal Num3 : std_logic_vector(4 downto 0);
   signal borrar : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guarda PORT MAP (
          CLOCK => CLOCK,
          Sen => Sen,
          div => div,
          Num1 => Num1,
          Num2 => Num2,
          Num3 => Num3,
          borrar => borrar
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
      wait for CLOCK_period*5;
		div <= '1';
		Sen <= "00001";
       wait for CLOCK_period*1;
		div <='0';
      wait for CLOCK_period*5;
		div <= '1';
		Sen <= "00101";
      wait for CLOCK_period*1;	
      div <='0';
		wait for CLOCK_period*5;
		div <= '1';
		Sen <= "00011";
		wait for CLOCK_period*1;
		div <='0';
		wait for CLOCK_period*5;
		div <='1';
		Sen <="01101";
		wait for CLOCK_period*1;
		div <='0';
		wait for CLOCK_period*5;
		div <='1';
		Sen <="01100";
		wait for CLOCK_period*1;
		div <='0';

      -- insert stimulus here 

      wait;
   end process;

END;
