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
    Component lab4_1_1
          Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           sig : out STD_LOGIC;
           MMCM : out STD_LOGIC);
    End Component;

	Signal clk 	: STD_LOGIC := '0';
	Signal rst : STD_LOGIC := '0';
	Signal en : STD_LOGIC := '1';
	
	Signal sigtest : STD_LOGIC := '0';
	Signal MMCMtest : STD_LOGIC;
    
    constant half_period  : time := 5ns;
    
    begin
    FF: lab4_1_1 port map(clk,rst,en,sigtest,MMCMtest);
    clk <= not clk after half_period;
    
	process
    begin
        wait;

    end process;
    
end Behavioral;
