----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2017 20:09:39
-- Design Name: 
-- Module Name: audio_tb - Behavioral
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

entity audio_tb is
--  Port ( );
end audio_tb;

architecture Behavioral of audio_tb is
    Component dsed_audio
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
    end component;
    
    signal clk : std_logic := '0';
    constant half_period : time := 5 ns;
    
    signal rst : std_logic := '1';
    signal C, R, SW0, SW1: std_logic := '0';
    signal L : std_logic := '0';
    
    signal mdata: std_logic := '1';
    signal a,b,d : std_logic := '0';
    signal smclk,LR,sd,pwm: std_logic := '0';


begin
    clk <= not clk after half_period;
    test: dsed_audio port map(clk,rst,L,C,R,SW0,SW1,smclk,mdata,LR,sd,pwm);
    
    mdata_proc: process
    begin
        wait for 100 ns; rst <= '0';
        a <= not a after 1300 ns;
        b <= not b after 2100 ns;
        d <= not d after 3700 ns;
        mdata <= a xor b xor d;
    end process;
     
--     SW0_proc: process
--        begin
--            wait for 2250 us; SW0 <= '1';
--            wait for 700 us; SW0 <= '0';
--            wait;
--        end process;
     
     L_proc: process
       begin
           wait for 300 us; L <= '1';
           wait for 500 us; L <= '0';
           wait for 900 us; L <= '1';
           wait for 500 us; L <= '0';
           wait;
     end process;
    
    C_proc: process
    begin
        wait for 900 us; C <= '1';
        wait for 100 ns; C <= '0';
        wait;
    end process;
    
    R_proc: process
    begin
        wait for 1100 us; R <= '1';
        wait for 100 ns; R <= '0';
        wait for 1200 us; R <= '1';
        wait for 100 ns; R <= '0';
        wait;
    end process;

end Behavioral;
