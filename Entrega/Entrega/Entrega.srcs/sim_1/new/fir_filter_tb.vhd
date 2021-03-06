----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2017 17:40:14
-- Design Name: 
-- Module Name: fir_filter_tb - Behavioral
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
--Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filter_tb is
--  Port ( );
end fir_filter_tb;

architecture Behavioral of fir_filter_tb is
    component fir_filter
            Port ( clk : in STD_LOGIC;
                Reset : in STD_LOGIC;
                Sample_In : in signed (sample_size-1 downto 0);
                Sample_In_enable : in STD_LOGIC;
                filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
                Sample_Out : out signed (sample_size-1 downto 0);
                Sample_Out_ready : out STD_LOGIC);  
     end component;
     
     signal sclk,sSample_In_enable,sSample_Out_ready : STD_LOGIC :='0';
     signal sSample_In,sSample_Out: signed(sample_size-1 downto 0):="00000000";
     signal sfilter_select: STD_LOGIC:='0';
     signal sreset : STD_LOGIC := '1';
     constant half_period12 : time := 41.666666666666 ns;

begin
    
     filtro: fir_filter port map(sclk,sreset,sSample_In,sSample_In_enable,sfilter_select,sSample_Out,sSample_Out_ready);

     sclk <= not sclk after half_period12;
     
     
     sfilter_select<= not sfilter_select after 50000 ns;
     
      process
      begin
          wait for 40 ns; sreset <= '0';
          wait for 60 ns; sSample_In_enable <= '1'; sSample_In <= "01010010"; -- 01010010
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1'; sSample_In <= "00011101"; -- 00011101
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1'; sSample_In <= "11001011"; -- 11001011
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1'; sSample_In <= "00101101"; -- 00101101
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1'; sSample_In <= "00001110"; -- 00001110
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1';  sSample_In <= "11001100"; -- 11001100
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 1000ns; sSample_In_enable <= '1';  sSample_In <= "11100101"; -- 11100101
          wait for 80 ns; sSample_In_enable <= '0';
          
          wait for 400 ns; sreset <= '1';
      end process;
     
end Behavioral;
