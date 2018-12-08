--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:11 12/02/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/lab3_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dff_async_rst
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
 
ENTITY lab3_tb IS
END lab3_tb;
 
ARCHITECTURE behavior OF lab3_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dff_async_rst
    PORT(
         data : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   ----constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dff_async_rst PORT MAP (
          data => data,
          clk => clk,
          reset => reset,
          q => q
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
		
   end process;

END;
