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

entity lab5_1_1_tb is
end lab5_1_1_tb;

architecture Behavioral of lab5_1_1_tb is
    Component lab5_1_1
         Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ain : in STD_LOGIC;
           yout : out STD_LOGIC;
           cont : out STD_LOGIC_VECTOR (3 downto 0));	
    End Component;

	Signal clk 	: STD_LOGIC := '0';
	Signal ain_t : STD_LOGIC := '0';
	Signal rst : STD_LOGIC := '1';
    Signal yout_t : STD_LOGIC;    
    Signal cont_t : STD_LOGIC_VECTOR (3 downto 0):="0000";

    constant half_period  : time := 5ns;
    
    begin
    FFT: lab5_1_1 port map(clk,rst,ain_t,yout_t,cont_t);
    clk <= not clk after half_period;
    
	process
    begin
        rst <= '1';
        wait for 20 ns; rst <= '0';
        wait for 20 ns; ain_t <= '1';
        wait for 20 ns; ain_t <= '0';
        wait for 60 ns; ain_t <= '1';
        wait for 40 ns; ain_t <= '0';
   
        
        wait for 100 ns;
    end process;
    
end Behavioral;
