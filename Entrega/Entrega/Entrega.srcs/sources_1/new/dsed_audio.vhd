----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2017 18:32:20
-- Design Name: 
-- Module Name: dsed_audio - Behavioral
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

entity dsed_audio is
    Port (
        clk_100Mhz : in std_logic;
        reset: in std_logic;
        --Control ports
        BTNL: in STD_LOGIC;
        BTNC: in STD_LOGIC;
        BTNR: in STD_LOGIC;
        SW0: in STD_LOGIC;
        SW1: in STD_LOGIC;
        --To/From the microphone
        micro_clk : out STD_LOGIC;
        micro_data : in STD_LOGIC;
        micro_LR : out STD_LOGIC;
        --To/From the mini-jack
        jack_sd : out STD_LOGIC;
        jack_pwm : out STD_LOGIC
    );
end dsed_audio;

architecture Behavioral of dsed_audio is
    Component controlador
    Port ( clk_100Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; -- BTNU
           clk_12Mhz: out STD_LOGIC;
           -- buttons
           BTNC : in STD_LOGIC; -- clear
           BTNL : in STD_LOGIC; -- rec
           BTNR : in STD_LOGIC; -- reproducir 
           -- switchs
           sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           -- interfaz de audio (grabado)
           record_enable : out STD_LOGIC;
           sample_out : in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_out_ready : in STD_LOGIC;
           -- interfaz de audio (reproducción)
           play_enable : out STD_LOGIC;
           sample_in : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_request: in STD_LOGIC;
           -- RAM
           ena: out STD_LOGIC;
           wea : out STD_LOGIC_VECTOR(0 downto 0);
           addra : out STD_LOGIC_VECTOR(18 downto 0);
           dina: out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           douta: in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           -- filtro FIR
           sample_in_fir : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_in_enable_fir : out STD_LOGIC;
           filter_select : out STD_LOGIC;
           sample_out_fir: in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_out_ready_fir : in STD_LOGIC
           );
    end component;
    
    Component fir_filter
    Port ( clk : in STD_LOGIC;
        Reset : in STD_LOGIC;
        Sample_In : in signed (sample_size-1 downto 0);
        Sample_In_enable : in STD_LOGIC;
        filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
        Sample_Out : out signed (sample_size-1 downto 0);
        Sample_Out_ready : out STD_LOGIC);
    end component;
    
    Component blk_mem_gen_0
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
    END component;
    
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

    signal clk12 : std_logic;
    
    signal srecord : std_logic;
    signal sout: std_logic_vector(sample_size-1 downto 0);
    signal sout_ready: std_logic;
    
    signal splay : std_logic;
    signal sin: std_logic_vector(sample_size-1 downto 0);
    signal srequest : std_logic;
    
    signal sena: std_logic;
    signal swea: std_logic_vector(0 downto 0);
    signal saddra: std_logic_vector(18 downto 0);
    signal sdina: std_logic_vector(sample_size-1 downto 0);
    signal sdouta: std_logic_vector(sample_size-1 downto 0);
    
    signal ssample_out_fir : signed(sample_size-1 downto 0);
    signal ssample_in_fir,ssample_in_firoff : std_logic_vector(sample_size-1 downto 0);
    signal ssample_in_enable_fir, ssample_out_ready_fir: std_logic;
    signal sfilter_select: std_logic;

begin

    fir: fir_filter port map(clk12,reset,signed(ssample_in_firoff),ssample_in_enable_fir,sfilter_select,ssample_out_fir,ssample_out_ready_fir);

    ssample_in_firoff<=std_logic_vector(unsigned(ssample_in_fir)+x"80");

    control: controlador port map(clk_100Mhz,reset,clk12,BTNC,BTNL,BTNR,sw0,sw1,srecord,sout,sout_ready,splay,sin,srequest,sena,swea,saddra,sdina,sdouta,ssample_in_fir,ssample_in_enable_fir,sfilter_select,std_logic_vector(ssample_out_fir),ssample_out_ready_fir);
    audio: audio_interface port map(clk12,reset,srecord,sout,sout_ready,micro_clk,micro_data,micro_LR,splay,sin,srequest,jack_sd,jack_pwm);
    ram: blk_mem_gen_0 port map(clk12,'1',swea,saddra,sdina,sdouta);

end Behavioral;
