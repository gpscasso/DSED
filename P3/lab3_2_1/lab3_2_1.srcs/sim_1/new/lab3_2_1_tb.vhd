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
    Component lab3_2_1
        Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           qa: out STD_LOGIC;
           qb: out STD_LOGIC;
           qc: out STD_LOGIC);	
    End Component;

	Signal d 	: STD_LOGIC := '0';
	Signal clk 	: STD_LOGIC := '0';
	
	Signal qa : STD_LOGIC := '0';
	Signal qb : STD_LOGIC := '0';
    Signal qc : STD_LOGIC := '0';
    
    constant half_period  : time := 10ns;
    
    begin
    FF: lab3_2_1 port map(d,clk,qa,qb,qc);
    clk <= not clk after half_period;
    
	process
    begin
        wait for 9 ns; D <= '1';
        wait for 4 ns; D <= '0';
        wait for 2 ns; D <= '1';
        wait for 4 ns; D <= '0';
        wait for 6 ns; D <= '1';
        wait for 4 ns; D <= '0';
        wait for 2 ns; D <= '1';
        wait for 2 ns; D <= '0';
        wait for 1 ns; D <= '1';
        wait for 2 ns; D <= '0';
        wait for 2 ns; D <= '1';
        wait for 8 ns; D <= '0';
        
        wait;
    end process;
    
end Behavioral;
