--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:01:15 12/09/2018
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
         clk : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic := '0';
   signal s : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rs_trigger PORT MAP (
          r => r,
          s => s,
          clk => clk,
          q => q
        );

   -- Clock process definitions

   -- Stimulus process
   r <= not r after 40 ns;
	s <= not s after 20 ns;
	clk <= not clk after 10 ns;

END;
