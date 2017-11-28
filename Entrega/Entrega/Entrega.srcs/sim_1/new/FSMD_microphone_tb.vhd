----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2017 01:17:13
-- Design Name: 
-- Module Name: FSMD_microphone_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMD_microphone_tb is
--  Port ( );
end FSMD_microphone_tb;

architecture Behavioral of FSMD_microphone_tb is
    Component FSMD_microphone
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable_4_cycles : in STD_LOGIC;
               micro_data : in STD_LOGIC;
               sample_out : out STD_LOGIC_VECTOR (7 downto 0);
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
        signal soutT : std_logic_vector(7 downto 0);
        signal sready : std_logic := '0';
        
        constant half_period : time := 0.0833333333333333 us;
            
            begin
                EN4TT: en_4_cycles port map(clk,rst,clk3,en2,en4);
                FSMDT: FSMD_microphone port map(clk3,rst,en4,mdata,soutT,sready);
                clk <= not clk after half_period;
                
            process
            begin
                wait for 0.05 us; rst <= '0';
                wait for 2000 us; rst <= '1';
            end process;
                
end Behavioral;