--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:23:53 12/01/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/d_latch_enable_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_latch_enable
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
 
ENTITY d_latch_enable_tb IS
END d_latch_enable_tb;
 
ARCHITECTURE behavior OF d_latch_enable_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_latch_enable
    PORT(
         d : IN  std_logic;
         e : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal e : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal nq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_latch_enable PORT MAP (
          d => d,
          e => e,
          q => q,
          nq => nq
        );

   -- Clock process definitions
  

   -- Stimulus process
   D_process : process
	begin
		d <= not d;
		wait for 10 ns;
	end process;
	
	E_process : process
	begin
		e <= not e;
		wait for 20 ns;
	end process;

END;
