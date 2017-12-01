----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2017 11:55:04
-- Design Name: 
-- Module Name: audio_interface_tb - Behavioral
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

entity audio_interface_tb is
end audio_interface_tb;

architecture Behavioral of audio_interface_tb is

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
      signal sclk_12megas : STD_LOGIC;
      signal sreset :  STD_LOGIC;
                 --Recording ports
                 --To/From the controller
      signal srecord_enable:  STD_LOGIC;
      signal ssample_out:  STD_LOGIC_VECTOR (sample_size-1 downto 0);
      signal ssample_out_ready:  STD_LOGIC;
                 --To/From the microphone
      signal smicro_clk :  STD_LOGIC;
      signal ssmicro_data :  STD_LOGIC;
      signal smicro_LR :  STD_LOGIC;
                 --Playing ports
                 --To/From the controller
      signal splay_enable:  STD_LOGIC;
      signal ssample_in:  std_logic_vector(sample_size-1 downto 0);
      signal ssample_request:  std_logic;
                 --To/From the mini-jack
      signal sjack_sd :  STD_LOGIC;
      signal sjack_pwm :  STD_LOGIC;      
      constant half_period12 : time := 41.666666666666 ns;

begin


        sclk_12megas <= not sclk_12megas after half_period12;
        
        AudioInterface: audio_interface port map(
                  clk_12megas =>sclk_12megas, 
                  reset =>sreset,
                  record_enable =>record_enable,
                  sample_out =>sample_out,
                  sample_out_ready =>sample_out_ready,                  
                  micro_clk =>micro_clk,
                  micro_data =>micro_data,
                  micro_LR =>micro_LR,
                  play_enable =>play_enable,
                  sample_in =>sample_in,
                  sample_request =>sample_request,
                  jack_sd =>jack_sd,
                  jack_sd =>, 
        );
          



end Behavioral;
