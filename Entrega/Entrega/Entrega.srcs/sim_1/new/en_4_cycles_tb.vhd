----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2017 13:59:57
-- Design Name: 
-- Module Name: en_4_cycles_tb - Behavioral
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

entity en_4_cycles_tb is
end en_4_cycles_tb;

architecture Behavioral of en_4_cycles_tb is
    Component en_4_cycles
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_3megas : out STD_LOGIC;
               en_2_cycles : out STD_LOGIC;
               en_4_cycles : out STD_LOGIC);
    End component;

    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal clk3, en2, en4 : std_logic;
    
    constant half_period : time := 0.0833333333333333 us;
    
    begin
        EN4T: en_4_cycles port map(clk,rst,clk3,en2,en4);
        clk <= not clk after half_period;
        
    process
    begin
        wait for 0.05 us; rst <= '0';
        wait for 10 us; rst <= '1';
    end process;
        
end Behavioral;
