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
      
      signal sclk_12megas : STD_LOGIC := '0';
      signal sreset :  STD_LOGIC := '1';
      signal srecord_enable:  STD_LOGIC := '0';
      signal ssample_out_ready:  STD_LOGIC;
      signal smicro_clk :  STD_LOGIC;
      signal smicro_data :  STD_LOGIC;
      signal smicro_LR :  STD_LOGIC; -- Está a 1
      signal splay_enable:  STD_LOGIC  := '0';
      signal ssample_request:  std_logic;
      signal sjack_sd :  STD_LOGIC; -- Está a 1
      signal sjack_pwm :  STD_LOGIC;      
      
      signal sample : std_logic_vector(sample_size-1 downto 0);
      signal a,b,c,d,e,f : std_logic := '0';
      
      constant half_period12 : time := 41.666666666666 ns;

begin
        sclk_12megas <= not sclk_12megas after half_period12;
        a <= not a after 1300 ns;
        b <= not b after 2100 ns;
        c <= not c after 3700 ns;
        smicro_data <= a xor b xor c;
        
        d <= not d after 75 us;
        e <= not e after 25 us;
        f <= not f after 50 us;
        srecord_enable <= d xor e xor f;   
        splay_enable <= d xor e;
        
        AudioInterface: audio_interface port map(
                  clk_12megas =>sclk_12megas, 
                  reset =>sreset,
                  record_enable =>srecord_enable,
                  sample_out =>sample,
                  sample_out_ready =>ssample_out_ready,                  
                  micro_clk =>smicro_clk,
                  micro_data =>smicro_data,
                  micro_LR =>smicro_LR,
                  play_enable =>splay_enable,
                  sample_in =>sample,
                  sample_request =>ssample_request,
                  jack_sd =>sjack_sd,
                  jack_pwm =>sjack_pwm);
          
          process
          begin
          
              wait for 0.05 us; sreset <= '0';
  
          
          end process;

end Behavioral;
