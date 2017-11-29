----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2017 12:45:27
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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
use work.package_dsed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_tb is
end pwm_tb;

architecture Behavioral of pwm_tb is
    Component pwm
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               en_2_cycles : in STD_LOGIC;
               sample_in : in STD_LOGIC_VECTOR (sample_size-1 downto 0);
               sample_request : out STD_LOGIC;
               pwm_pulse : out STD_LOGIC);
    End component;

    signal clk12 : std_logic := '0';
    signal rst : std_logic := '1';
    signal clk6: std_logic := '0';
    signal ssample_in :  STD_LOGIC_VECTOR (sample_size-1 downto 0):="00000000";
    signal ssample_request : STD_LOGIC;
    signal spwm_pulse :  STD_LOGIC;
    
    constant half_period1 : time := 41.666666666666 ns;
    constant half_period2 : time := 83.333333333333 ns;
    
    begin
        prueba: pwm port map(clk12,rst,clk6,ssample_in,ssample_request,spwm_pulse);--ERROR AQUI
        clk12 <= not clk12 after half_period1;
        clk6 <= not clk6 after half_period2;
        ssample_in<=std_logic_vector(unsigned(ssample_in)+1) after 200000ns;
    process
    begin
        wait for 0.05 us; rst <= '0';
        wait;
    end process;
        
end Behavioral;
