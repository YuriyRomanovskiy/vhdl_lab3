----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:59 12/01/2018 
-- Design Name: 
-- Module Name:    bistable - Behavioral 
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
--library UNISIM; v n
--use UNISIM.VComponents.all;

entity bistable is
    Port ( q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end bistable;

architecture Struct of bistable is
	component Invertor
		port (
			a: in std_logic;
			f: out std_logic);
	end component;
	
	signal t1, t2: std_logic;
begin
	
	U1: Invertor port map(a => t2, f => t1);
	U2: Invertor port map(a => t1, f => t2);
	nq <= t1;
	q <= t2;
	
end Struct;

architecture Behavioral of bistable is
	component Invertor
		port (
			a: in std_logic;
			f: out std_logic);
	end component;
	
	signal t1, t2: std_logic;
begin
	
	U1: Invertor port map(a => t2, f => t1);
	U2: Invertor port map(a => t1, f => t2);
	nq <= t1;
	q <= t2;
end Behavioral;

