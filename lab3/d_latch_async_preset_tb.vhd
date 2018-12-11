--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:31:10 12/09/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/d_latch_async_preset_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_latch_async_preset
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
 
ENTITY d_latch_async_preset_tb IS
END d_latch_async_preset_tb;
 
ARCHITECTURE behavior OF d_latch_async_preset_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_latch_async_preset
    PORT(
         d : IN  std_logic;
         e : IN  std_logic;
         pre : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal e : std_logic := '0';
   signal pre : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   ---constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_latch_async_preset PORT MAP (
          d => d,
          e => e,
          pre => pre,
          q => q
        );

   -- Clock process definitions
 

   -- Stimulus process
   d_process :process
   begin
		d <= not d;
		wait for 10 ns;
   end process;

   e_process :process
   begin
		e <= not e;
		wait for 20 ns;
   end process;

   pre_process :process
   begin
		pre <= not pre;
		wait for 40 ns;
   end process;

END;
