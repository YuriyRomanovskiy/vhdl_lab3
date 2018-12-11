----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:57:45 12/09/2018 
-- Design Name: 
-- Module Name:    rs_trigger - Behavioral 
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

entity rs_trigger is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end rs_trigger;

architecture Behavioral of rs_trigger is

begin

	process(r, s, clk)
	begin
		if rising_edge(clk) then
			if (r = '1' and s = '1') then
				q <= 'Z';
			elsif r = '1' then
				q <= '0';
			elsif s = '1' then
				q <= '1';
			end if; 
		end if;
	end process;


end Behavioral;

