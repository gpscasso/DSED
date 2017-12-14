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
           new_sample : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (2 downto 0);
           load : out STD_LOGIC;
           processed_sample: out STD_LOGIC);
end Moore_fir_filter;

architecture Behavioral of Moore_fir_filter is

    type state_type is (SR,S0,S1,S2,S3,S4,S5,S6);
    signal state, next_state : state_type;
    signal sm, m_reg : STD_LOGIC_VECTOR(2 downto 0);
    signal sprocessed, sload, load_reg : STD_LOGIC;
    
begin
    SYNC_PROC : process (reset,clk)
    begin
        if (reset = '1') then
            state <= SR;
            m<="111";
            processed_sample<='0';
        elsif (rising_edge(clk)) then
            state <= next_state;
            m <= sm;
            load_reg <= sload;
            processed_sample <= sprocessed;
            
        end if;
        
    end process;
    
    OUTPUT_DECODE : process (state, new_sample)
    begin
        case state is
             when SR =>             
                 sprocessed<='0';
                 if(new_sample = '1') then
                    sm<="000";
                    sload <= '1';
                 else
                    sm<="111";
                    sload <= '0';
                 end if;
             when S0 =>
                 sm<="001";
                 sprocessed<='0';
                 sload <= '1';
             when S1 =>
                 sm<="010";
                 sprocessed<='0';
                 sload <= '1';
             when S2 =>
                 sm<="011";
                 sprocessed<='0';
                 sload <= '1';
             when S3 =>
                 sm<="100";  
                 sprocessed<='0'; 
                 sload <= '1';        
             when S4 =>
                 sm<="101";
                 sprocessed<='0';
                 sload <= '1';
             when S5 =>
                 sm<="110";
                 sprocessed<='0';
                 sload <= '1';
             when S6 =>
                 sm<="111";
                 sprocessed<='1';
                 sload <= '0';
             when others =>
                 sprocessed<='0';
                 sm<="111";
                 sload <= '0';
       end case;
        
    end process;
        
    
    NEXT_STATE_DECODE : process (state,new_sample)
    begin
       next_state<=S0;
       case state is
            when SR =>
                 if(new_sample = '1') then
                    next_state <= S0;
                 else
                    next_state<=SR;
                 end if;
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
                 next_state<=S6;
            when S6 =>
                 next_state<=SR;
            when others =>
                 next_state<=SR;                      
        end case;
    end process; 
    load <= load_reg;

end Behavioral;