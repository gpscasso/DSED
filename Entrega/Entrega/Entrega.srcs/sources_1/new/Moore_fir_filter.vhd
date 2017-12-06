----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2017 23:56:34
-- Design Name: 
-- Module Name: Moore_fir_filter - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Moore_fir_filter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0);
           load : out STD_LOGIC);
end Moore_fir_filter;

architecture Behavioral of Moore_fir_filter is
    type state_type is (S0,S1,S2,S3,S4,S5,S6);
    signal state, next_state : state_type;
    signal sm : unsigned(2 downto 0):="000";
    signal next_sm: unsigned(2 downto 0):="000";
    signal sload : STD_LOGIC:='0';
    signal next_sload: STD_LOGIC:='0';
begin
    SYNC_PROC : process (clk,reset)
    begin
        if (reset = '1') then
            state <= S0;
            sm<="000";
            load<='0';
        elsif rising_edge(clk) then
            state <= next_state;
            sm<=next_sm;
            sload<=next_sload;
        end if;
        
    end process;
    
    OUTPUT_DECODE : process (state)
    begin
           
    end process;
        
    
    NEXT_STATE_DECODE : process (state,sm,sload)
    begin
       next_state<=S0;
       case state is
            when S0 =>
                 next_state<=S1;
            when S1 =>
                 next_state<=S2;
            when S2 =>
                 next_state<=S3;
            when S3 =>
                 next_state<=S4;             
            when S4 =>
                 next_state<=S5;
            when S5 =>
                 next_state<=S0;
    end process; 

end Behavioral;
