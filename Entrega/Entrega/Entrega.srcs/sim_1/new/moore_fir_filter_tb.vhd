----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2017 17:14:38
-- Design Name: 
-- Module Name: moore_fir_filter_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use work.package_dsed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity moore_fir_filter_tb is
--  Port ( );
end moore_fir_filter_tb;


architecture Behavioral of moore_fir_filter_tb is
    Component Moore_fir_filter
    Port ( clk : in STD_LOGIC;
           new_sample : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (2 downto 0);
           load : out STD_LOGIC;
           processed_sample: out STD_LOGIC);
    End component;
    signal snew_sample : STD_LOGIC:='0';
    signal sreset : STD_LOGIC:='0';
    signal sm :  STD_LOGIC_VECTOR (2 downto 0);
    signal sload :  STD_LOGIC;
    signal sprocessed_sample:  STD_LOGIC;
    constant half_period1 : time := 41.666666666666 ns;
begin
    moore: Moore_fir_filter port map(snew_sample,sreset,sm,sload,sprocessed_sample);
    snew_sample<=not snew_sample after half_period1;
    clk<=not clk after half_period1;
    
end Behavioral;
