--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:51 12/09/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/t_trigger_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: t_trigger
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
 
ENTITY t_trigger_tb IS
END t_trigger_tb;
 
ARCHITECTURE behavior OF t_trigger_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT t_trigger
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal t : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal nq : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_trigger PORT MAP (
          t => t,
          clk => clk,
          q => q,
          nq => nq
        );

   
   -- Stimulus process
   T_process : process
	begin
		t <= not t;
		wait for 10 ns;
	end process;
	
	
	clk_process : process
	begin
		clk <= not clk;
		wait for 20 ns;
	end process;

END;
