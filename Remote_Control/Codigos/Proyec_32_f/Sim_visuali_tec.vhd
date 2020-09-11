
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Sim_visuali_tec IS
END Sim_visuali_tec;
 
ARCHITECTURE behavior OF Sim_visuali_tec IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Visualizar_tecla
    PORT(
         CLK : IN  std_logic;
         Sig : IN  std_logic;
         Num : OUT  std_logic_vector(4 downto 0)
 
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Sig : std_logic := '0';

 	--Outputs
   signal Num : std_logic_vector(4 downto 0);
  
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Visualizar_tecla PORT MAP (
          CLK => CLK,
          Sig => Sig,
          Num => Num
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 3 us;
		sig <= '0';
      wait for CLK_period*50;
		sig <= '1';
		--Nuevo 
      wait for CLK_period*450000;
		sig <= '0';
      wait for CLK_period*5600000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;		
		--------
		sig <= '1';		
		wait for CLK_period*400000;
		sig <= '0';
      wait for CLK_period*56000;
		----------------------
		sig <= '1';	
      wait for CLK_period*700000;
		sig <= '0';
      wait for CLK_period*56000;
		---------------------------
		sig <= '1';		
		wait for CLK_period*220000;
		sig <= '0';
      wait for CLK_period*56000;
		-----------------------------
		sig <= '1';	
      wait for CLK_period*700000;
		
		
				--Nuevo 
      wait for CLK_period*450000;
		sig <= '0';
      wait for CLK_period*5600000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;	
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--cero
		sig <= '1';
      wait for CLK_period*56000;
		sig <= '0';
		wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;
		--uno
		sig <= '1';
      wait for CLK_period*170000;
		sig <= '0';
      wait for CLK_period*56000;	
		
		sig <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
