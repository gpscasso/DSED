----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2017 19:00:08
-- Design Name: 
-- Module Name: FSMD_microphone_pse_tb - Behavioral
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
use work.package_dsed.all;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMD_microphone_pse_tb is
--  Port ( );
end FSMD_microphone_pse_tb;

architecture Behavioral of FSMD_microphone_pse_tb is
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
        
        signal clk : std_logic := '0';
        signal rst : std_logic := '1';
        signal clk3, en2, en4 : std_logic := '0';
        signal mdata : std_logic := '1';
        signal soutT : std_logic_vector(sample_size-1 downto 0);
        signal sready : std_logic := '0';
        signal a,b,c : std_logic := '0';
        
        constant half_period : time := 0.04166666666666 us;
            
            begin
                EN4TP: en_4_cycles port map(clk,rst,clk3,en2,en4);
                FSMDP: FSMD_microphone port map(clk,rst,en4,mdata,soutT,sready);
                clk <= not clk after half_period;
                
            process
            begin
                wait for 0.05 us; rst <= '0';
                a <= not a after 1300 ns;
                b <= not b after 2100 ns;
                c <= not c after 3700 ns;
                mdata <= a xor b xor c;
            --    wait for 2000 us; rst <= '1';
            end process;
                
end Behavioral;