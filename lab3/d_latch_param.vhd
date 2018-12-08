----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:49 12/01/2018 
-- Design Name: 
-- Module Name:    d_latch_param - Behavioral 
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

entity d_latch_param is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end d_latch_param;


architecture Struct of d_latch_param is 
	component nor1 
		port (
			a, b: in std_logic;
			f : out std_logic);
	end component;
	component invertor
		port (
			a: in std_logic;
			f: out std_logic);
	end component;
	signal t1, t2, t3 : std_logic;
begin
	U1: invertor port map (a => d, f => t3);
	U2: nor1 port map (a => d, b => t2, f => t1);
	U3: nor1 port map (a => t3, b => t1, f => t2);
	q <= t2 after 5 ns;
	nq <= t1 after 7 ns;
end Struct;

architecture Behavioral of d_latch_param is
	signal q_t: std_logic;
begin

	q_t <= d when q_t /= d;
	q <= q_t after 5 ns;
	nq <= not q_t after 7 ns;

end Behavioral;

