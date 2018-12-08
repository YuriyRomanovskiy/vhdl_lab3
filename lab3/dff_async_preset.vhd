----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:36:35 12/04/2018 
-- Design Name: 
-- Module Name:    dff_async_preset - Behavioral 
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

entity dff_async_preset is
    Port ( data : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           q : out  STD_LOGIC);
end dff_async_preset;

architecture Behavioral of dff_async_preset is

begin

process (clk, preset) begin

if (preset = '0') then

q <= '1';

elsif (clk'event and clk = '1') then

q <= data;

end if;

end process;

end Behavioral;

