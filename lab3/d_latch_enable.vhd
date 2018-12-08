----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:14 12/01/2018 
-- Design Name: 
-- Module Name:    d_latch_enable - Behavioral 
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

entity d_latch_enable is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end d_latch_enable;

architecture Struct of d_latch_enable is 
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
	component and1 
		port (
			a, b: in std_logic;
			f : out std_logic);
	end component;
	signal d_t, ea_t, n_t1, n_t2, da_t : std_logic;
begin
	U1: and1 port map (a => e, b => d, f => ea_t);
	U2: invertor port map (a => D, f => d_t);
	U3: and1 port map (a => d_t, b => e, f => da_t);
	U4: nor1 port map (a => ea_t, b => n_t2, f => n_t1);
	U5: nor1 port map (a => da_t, b => n_t1, f => n_t2);
	q <= n_t2;
	nq <= n_t1;
end Struct;

architecture Behavioral of d_latch_enable is
	signal data : std_logic;
begin

	data <= d when (e = '1') else data;
   q <= data;
	nq <= not data;

end Behavioral;

