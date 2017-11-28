----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2017 16:13:08
-- Design Name: 
-- Module Name: lab5_2_1 - Behavioral
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

entity lab5_2_1 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ain : in STD_LOGIC_VECTOR (1 downto 0);
           yout : out STD_LOGIC);
end lab5_2_1;

architecture Behavioral of lab5_2_1 is

type state_type is (Sres,S00,S01,S10,S11,St0,St1);
signal state, next_state : state_type;
signal yout_s : STD_LOGIC := '0';

    begin   
    SYNC_PROC : process (clk)
        begin
            if rising_edge(clk) then
                if (reset = '1') then
                    state <= Sres;
                else
                    state <= next_state;
                end if;
            end if;
    end process;
    
    OUTPUT_DECODE : process (state)
        begin
          case (state) is
               when Sres =>
                  yout_s <= '0';
               when S00 =>
               when S01 =>
                  yout_s <= '0';        
               when S10 =>
               when S11 =>
                  yout_s <= '1'; 
               when St0 =>
               when St1 =>
                  yout_s <= not(yout_s); 
               when others =>
          end case;
    end process;
    
    NEXT_STATE_DECODE : process (state, ain)
        begin
        
        if(ain = "01") then
            next_state <= S00;
        elsif(ain = "10") then
            next_state <= St0;
        elsif(ain = "11") then
            next_state <= S10;
        end if;
        
        case (state) is
             when Sres =>
                if (ain = "00") then
                    next_state <= Sres;
                end if;
             when S00 =>
                if (ain = "00") then
                    next_state <= S01;
                end if;
                
             when S01 =>
                if (ain = "00") then
                    next_state <= S01;
                end if; 
                
              when S10 =>
                if (ain = "00") then
                    next_state <= S11;
                end if;
               
              when S11 =>
                if (ain = "00") then
                    next_state <= S11;
                end if;  
                
              when St0 =>
                if (ain = "00") then
                    next_state <= St1;            
                end if;
                
              when St1 =>
                if (ain = "00") then
                    next_state <= St1;
                end if;
        end case;
    end process;

yout <= yout_s;
end Behavioral;
