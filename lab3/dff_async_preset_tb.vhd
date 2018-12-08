--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:46:31 12/04/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab3/dff_async_preset_tb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dff_async_preset
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
 
ENTITY dff_async_preset_tb IS
END dff_async_preset_tb;
 
ARCHITECTURE behavior OF dff_async_preset_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dff_async_preset
    PORT(
         data : IN  std_logic;
         clk : IN  std_logic;
         preset : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic := '0';
   signal clk : std_logic := '0';
   signal preset : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   ---constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dff_async_preset PORT MAP (
          data => data,
          clk => clk,
          preset => preset,
          q => q
        );

   -- Clock process definitions
  
 

   -- Stimulus process
    D_process : process
	begin
		data <= not data;
		wait for 20 ns;
	end process;

	C_process : process
	begin
		clk <= not clk;
		wait for 10 ns;
	end process;
	
	R_process : process
	begin
		preset <= not preset;
		wait for 40 ns;
	end process;

END;
