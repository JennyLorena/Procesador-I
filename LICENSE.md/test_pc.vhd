--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:56:41 04/02/2018
-- Design Name:   
-- Module Name:   C:/Users/utp/Procesador1/test_pc.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: npc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_pc IS
END test_pc;
 
ARCHITECTURE behavior OF test_pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT npc
    PORT(
         Entrada_Pc : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         Salida_nPc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada_Pc : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Salida_nPc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: npc PORT MAP (
          Entrada_Pc => Entrada_Pc,
          reset => reset,
          clk => clk,
          Salida_nPc => Salida_nPc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';
      Entrada_Pc <= 00000000000000000000000000000111;
		wait for 100 ns;
		Entrada_Pc <= 00000000000000000000000000001010;
		wait for 100 ns;
		Entrada_Pc <= 00000000000000000000000000001011;
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
