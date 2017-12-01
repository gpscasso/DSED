----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2017 16:15:01
-- Design Name: 
-- Module Name: controlador - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controlador is
    Port ( clk_100Mhz : in STD_LOGIC;
           reset : in STD_LOGIC;
           micro_clk : out STD_LOGIC;
           micro_data : in STD_LOGIC;
           micro_LR : out STD_LOGIC;
           jack_sd : out STD_LOGIC;
           jack_pwm : out STD_LOGIC);
end controlador;

architecture Behavioral of controlador is

    Component clk_wiz_0
        Port( clk12 : out STD_LOGIC;
              reset : in STD_LOGIC;
              clk100 : in STD_LOGIC);
    End component;
            
    Component audio_interface
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               --Recording ports
               --To/From the controller
               record_enable: in STD_LOGIC;
               sample_out: out STD_LOGIC_VECTOR (sample_size-1 downto 0);
               sample_out_ready: out STD_LOGIC;
               --To/From the microphone
               micro_clk : out STD_LOGIC;
               micro_data : in STD_LOGIC;
               micro_LR : out STD_LOGIC;
               --Playing ports
               --To/From the controller
               play_enable: in STD_LOGIC;
               sample_in: in std_logic_vector(sample_size-1 downto 0);
               sample_request: out std_logic;
               --To/From the mini-jack
               jack_sd : out STD_LOGIC;
               jack_pwm : out STD_LOGIC);
    end component;
    
    signal clk12M : std_logic;
    signal sample : std_logic_vector(sample_size-1 downto 0);
    signal sready, srequest : std_logic;
   

begin

    reloj: clk_wiz_0 port map(clk12M,reset,clk_100Mhz);
    audio: audio_interface port map(clk12M,reset,'1',sample,sready,micro_clk,micro_data,micro_LR,'1',sample,srequest,jack_sd,jack_pwm);
end Behavioral;
