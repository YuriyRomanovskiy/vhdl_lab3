----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:12 12/09/2018 
-- Design Name: 
-- Module Name:    jk_trigger - Behavioral 
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

entity jk_trigger is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
			  nq : out  STD_LOGIC);
end jk_trigger;

architecture Behavioral of jk_trigger is
	signal X: std_logic := '0';
begin

	process(CLK, J, K)   
	begin
		if rising_edge(CLK) then
			if J = '1' and K = '0' then
				X <= '1';
			elsif J = '0' and K = '1' then
				X <= '0';  
			elsif J = '1' and K = '1' then
				X <= not X;  
			end if;
		end if;
	end process;
	Q <= X;
	nQ <= not X;

end Behavioral;

