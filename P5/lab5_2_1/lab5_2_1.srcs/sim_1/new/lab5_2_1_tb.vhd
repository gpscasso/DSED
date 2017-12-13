----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2017 11:26:07
-- Design Name: 
-- Module Name: lab5_2_1_tb - Behavioral
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

entity lab5_2_1_tb is
--  Port ( );
end lab5_2_1_tb;

architecture Behavioral of lab5_2_1_tb is

Component lab5_2_1
    Port ( clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       ain : in STD_LOGIC_VECTOR (1 downto 0);
       yout : out STD_LOGIC);
    end component;

	Signal sclk 	: STD_LOGIC := '0';
	Signal rst : STD_LOGIC := '1';
    Signal sain : STD_LOGIC_VECTOR(1 downto 0) := "00";
    Signal syout : STD_LOGIC;
    constant half_period  : time := 5ns;

begin

    FFT: lab5_2_1 port map(sclk,rst,sain,syout);
    sclk <= not sclk after half_period;
    rst <= '0' after 20 ns;
    
    process
    begin
        wait for 40 ns; sain <= "11";
        wait for 10 ns; sain <= "10";
        wait for 10 ns; sain <= "00";
        wait for 20 ns; sain <= "10";
        wait for 10 ns; sain <= "00";
        wait for 10 ns; sain <= "11";
        wait for 10 ns; sain <= "00";
        wait for 10 ns; sain <= "01";
        wait for 10 ns; sain <= "00";
        wait for 10 ns; sain <= "10"; 
        wait for 10 ns; sain <= "11";
        wait for 10 ns; sain <= "00";       
        
    end process;

end Behavioral;

