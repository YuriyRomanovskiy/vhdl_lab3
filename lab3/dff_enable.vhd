----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:30 12/09/2018 
-- Design Name: 
-- Module Name:    dff_enable - Behavioral 
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

entity dff_enable is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           c : in  STD_LOGIC;
           q : out  STD_LOGIC);
end dff_enable;

architecture Behavioral of dff_enable is

begin

process(d, e, c)
	begin
		if e = '1' then
			if rising_edge(c) then
				q <= d;
			end if;
		end if;
	end process;

end Behavioral;

