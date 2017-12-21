----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2017 11:38:22
-- Design Name: 
-- Module Name: audio_interface - Behavioral
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

entity audio_interface is
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
           sample_in: in std_logic_vector(volumen_size-1 downto 0);
           sample_request: out std_logic;
           --To/From the mini-jack
           jack_sd : out STD_LOGIC;
           jack_pwm : out STD_LOGIC);
end audio_interface;

architecture Behavioral of audio_interface is
   Component FSMD_microphone
       Port ( clk_12megas : in STD_LOGIC;
              reset : in STD_LOGIC;
              enable_4_cycles : in STD_LOGIC;
              micro_data : in STD_LOGIC;
              sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
              sample_out_ready : out STD_LOGIC);
   End component;
   
   Component en_4_cycles
           Port ( clk_12megas : in STD_LOGIC;
                  reset : in STD_LOGIC;
                  clk_3megas : out STD_LOGIC;
                  en_2_cycles : out STD_LOGIC;
                  en_4_cycles : out STD_LOGIC);
   End component;
   Component pwm
           Port ( clk_12megas : in STD_LOGIC;
                  reset : in STD_LOGIC;
                  en_2_cycles : in STD_LOGIC;
                  sample_in : in STD_LOGIC_VECTOR (volumen_size-1 downto 0);
                  sample_request : out STD_LOGIC;
                  pwm_pulse : out STD_LOGIC);
    End component;
    signal en2,en4: std_logic;
    signal rec, play : std_logic;
    
begin
        
        EN4C: en_4_cycles port map(clk_12megas,reset,micro_clk,en2,en4);
        
        rec <= record_enable and en4;
        FSMDMIC: FSMD_microphone port map(clk_12megas,reset,rec,micro_data,sample_out,sample_out_ready);
       
        play <= play_enable and en2;
        GeneradorDePulsos: pwm port map(clk_12megas,reset,play,sample_in,sample_request,jack_pwm);
        micro_LR<='1';
        jack_sd<='1';
        

end Behavioral;
