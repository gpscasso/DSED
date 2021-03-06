----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2017 11:59:30
-- Design Name: 
-- Module Name: lab3_2_1_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab3_2_1_tb is
end lab3_2_1_tb;

architecture Behavioral of lab3_2_1_tb is
    Component lab3_4_2
        Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));	
    End Component;

	Signal clk 	: STD_LOGIC := '0';
	Signal en : STD_LOGIC := '1';
	Signal rst : STD_LOGIC := '0';
    
    Signal qtest : STD_LOGIC_VECTOR (2 downto 0) := "000";

    constant half_period  : time := 10ns;
    
    begin
    FF: lab3_4_2 port map(clk,en,rst,qtest);
    clk <= not clk after half_period;
    
	process
    begin
        wait for 100 ns; en <= '0';
        wait for 150 ns; en <= '1';
        wait for 50 ns; rst <= '1';
        wait for 4 ns; rst <= '0';
        
        wait for 100 ns;
    end process;
    
end Behavioral;
