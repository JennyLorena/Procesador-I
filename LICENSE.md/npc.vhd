----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:35:12 04/02/2018 
-- Design Name: 
-- Module Name:    npc - Behavioral 
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

entity npc is
    Port ( Entrada_Pc : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Salida_nPc : out  STD_LOGIC_VECTOR (31 downto 0));
end npc;

architecture Behavioral of npc is

begin

 process(clk,reset,Entrada_Pc)
	begin
	
   if reset='1' then
      Salida_nPc <= (others =>'0');
   else
		if (rising_edge(clk))then
			Salida_nPc <= Entrada_Pc;
   
		end if;
	end if;
	
	end process;

end Behavioral;

