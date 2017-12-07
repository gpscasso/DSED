----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2017 21:41:42
-- Design Name: 
-- Module Name: data_route_fir_filter_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_route_fir_filter_tb is
end data_route_fir_filter_tb;

architecture Behavioral of data_route_fir_filter_tb is
    Component data_route_fir_filter
        Port ( x0 : in signed (sample_size-1 downto 0);
               x1 : in signed (sample_size-1 downto 0);
               x2 : in signed (sample_size-1 downto 0);
               x3 : in signed (sample_size-1 downto 0);
               x4 : in signed (sample_size-1 downto 0);
               c0 : in signed (sample_size-1 downto 0);
               c1 : in signed (sample_size-1 downto 0);
               c2 : in signed (sample_size-1 downto 0);
               c3 : in signed (sample_size-1 downto 0);
               c4 : in signed (sample_size-1 downto 0);
               reset: in STD_LOGIC;
               m : in STD_LOGIC_VECTOR (2 downto 0);
               load : in STD_LOGIC;
               y : out signed (7 downto 0));
    End component;

    signal sx0 :  signed (sample_size-1 downto 0):=(others => '0');
    signal sx1 :  signed (sample_size-1 downto 0):="00000001";
    signal sx2 :  signed (sample_size-1 downto 0):="00000010";
    signal sx3 :  signed (sample_size-1 downto 0):="00000011";
    signal sx4 :  signed (sample_size-1 downto 0):="00000100";
    signal sc0 :  signed (sample_size-1 downto 0):="00000001";
    signal sc1 :  signed (sample_size-1 downto 0):="00000010";
    signal sc2 :  signed (sample_size-1 downto 0):="00000011";
    signal sc3 :  signed (sample_size-1 downto 0):="00000100";
    signal sc4 :  signed (sample_size-1 downto 0):=(others => '0');
    signal sreset:  STD_LOGIC:='0';
    signal sm :  STD_LOGIC_VECTOR (2 downto 0):="000";
    signal sload :  STD_LOGIC:='0';
    signal sy :  signed (7 downto 0):=(others => '0');
    constant half_period1 : time := 41.666666666666 ns;

    
begin
    route: data_route_fir_filter port map(sx0,sx1,sx2,sx3,sx4,sc0,sc1,sc2,sc3,sc4,sreset,sm,sload,sy);
    sload<=not sload after half_period1;
    sm<=std_logic_vector(unsigned(sm)+1) after half_period1;


end Behavioral;
