----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:27 12/01/2018 
-- Design Name: 
-- Module Name:    rs_latch - Behavioral 
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

entity rs_latch is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end rs_latch;


architecture Struct of rs_latch is 

	component nor1 
		port (
			a, b: in std_logic;
			z : out std_logic);
	end component;
	signal t1, t2 : std_logic;
begin
	U1: nor1 port map (a => S, b => t2, z => t1);
	U2: nor1 port map (a => R, b => t1, z => t2);
	nq <= t1;
	q <= t2;
end Struct;


architecture Behavioral of rs_latch is

signal t1, t2: std_logic;

begin

	t2 <= r nor t1;
	t1 <= s nor t2;
	nq <= t1;
	q <= t2;

end Behavioral;

