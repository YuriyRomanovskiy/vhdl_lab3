----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:50:50 12/04/2018 
-- Design Name: 
-- Module Name:    rs_trigger - Behavioral 
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

entity rs_trigger is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end rs_trigger;

architecture Behavioral of rs_trigger is

component nor1
	port (A : in  STD_LOGIC;
         B : in  STD_LOGIC;
         F : out  STD_LOGIC);
end component;

signal t1, t2 : STD_LOGIC;


begin
U1 : nor1
	port map (t2, R, t1);
nQ <= t1;
U2 : nor1
	port map (t1, S, t2);
Q <= t2;
end Behavioral;

