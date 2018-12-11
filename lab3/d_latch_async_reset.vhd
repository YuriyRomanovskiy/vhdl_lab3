----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:08 12/09/2018 
-- Design Name: 
-- Module Name:    d_latch_async_reset - Behavioral 
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

entity d_latch_async_reset is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           pre : in  STD_LOGIC;
           q : out  STD_LOGIC);
end d_latch_async_reset;

architecture Behavioral of d_latch_async_reset is

begin


end Behavioral;

