----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2017 16:47:11
-- Design Name: 
-- Module Name: controlador_tb - Behavioral
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

entity controlador_tb is
--  Port ( );
end controlador_tb;

architecture Behavioral of controlador_tb is
    Component controlador
        Port ( clk_100Mhz : in STD_LOGIC;
               reset : in STD_LOGIC;
               micro_clk : out STD_LOGIC;
               micro_data : in STD_LOGIC;
               micro_LR : out STD_LOGIC;
               jack_sd : out STD_LOGIC;
               jack_pwm : out STD_LOGIC);
    end component;
    
    signal clk100 : std_logic :='0';
    constant half_period100 : time := 5 ns;
    
    signal rst : std_logic := '1';
    signal smicro_data, a, b, c : std_logic := '0';

    signal smicro_clk,smicro_LR,sjack_sd,sjack_pwm : std_logic;    
begin

    clk100 <= not clk100 after half_period100;
    rst <= '0' after 0.1 ns;
    
    a <= not a after 1300 ns;
    b <= not b after 2100 ns;
    c <= not c after 3700 ns;
    smicro_data <= a xor b xor c;
    
    CTRL: controlador port map(clk100,rst,smicro_clk,smicro_data,smicro_LR,sjack_sd,sjack_pwm);

end Behavioral;
