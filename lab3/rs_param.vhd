----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:30 12/01/2018 
-- Design Name: 
-- Module Name:    rs_param - Behavioral 
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

entity rs_param is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end rs_param;

architecture Struct of rs_param is
	component nor1 
		port (
			a, b: in std_logic;
			f : out std_logic);
	end component;
	signal t1, t2 : std_logic;
begin

	U1: nor1 port map (a => s, b => t2, f => t1);
	U2: nor1 port map (a => r, b => t1, f => t2);
	nq <= transport t1 after 3 ns;
	q <= transport t2 after 2 ns;

end Struct;

