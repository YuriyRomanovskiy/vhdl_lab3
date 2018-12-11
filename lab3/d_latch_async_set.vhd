----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:49 12/09/2018 
-- Design Name: 
-- Module Name:    d_latch_async_set - Behavioral 
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

----!!! 
----reset
----!!!



entity d_latch_async_set is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q : out  STD_LOGIC);
end d_latch_async_set;

architecture Behavioral of d_latch_async_set is

begin

	process(d, clr)
	begin
		if clr = '0' then
			q <= '0';
		elsif clk = '1' then
			q <= d;
		end if;
	end process;

end Behavioral;

