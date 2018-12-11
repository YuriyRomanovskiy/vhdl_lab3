----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:13 12/09/2018 
-- Design Name: 
-- Module Name:    d_latch_async_preset - Behavioral 
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

entity d_latch_async_preset is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           pre : in  STD_LOGIC;
           q : out  STD_LOGIC);
end d_latch_async_preset;

architecture Behavioral of d_latch_async_preset is

begin

	process(d, pre)
	begin
		if pre = '1' then
			q <= '1';
		elsif e = '1' then
			q <= d;
		end if;
	end process;

end Behavioral;

