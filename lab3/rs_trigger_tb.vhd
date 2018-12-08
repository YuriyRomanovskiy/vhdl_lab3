--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:52:28 12/04/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/rs_trigger_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rs_trigger
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rs_trigger_tb IS
END rs_trigger_tb;
 
ARCHITECTURE behavior OF rs_trigger_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rs_trigger
    PORT(
         r : IN  std_logic;
         s : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal nq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rs_trigger PORT MAP (
          r => r,
          s => s,
          q => q,
          nq => nq
        );

   -- Clock process definitions
  

   -- Stimulus process
   R_process : process
	begin
		r <= not r;
		wait for 10 ns;
	end process;
	
	S_process : process
	begin
		s <= not s;
		wait for 20 ns;
	end process;

END;
