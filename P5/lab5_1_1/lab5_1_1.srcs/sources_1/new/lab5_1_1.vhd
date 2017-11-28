----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2017 11:34:49
-- Design Name: 
-- Module Name: lab5_1_1 - Behavioral
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab5_1_1 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ain : in STD_LOGIC;
           yout : out STD_LOGIC;
           cont : out STD_LOGIC_VECTOR (3 downto 0));
end lab5_1_1;

architecture Behavioral of lab5_1_1 is

    type state_type is (S0,S1,S2);
    signal state, next_state : state_type;
    signal next_cont : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal cont_reg: STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal yout_reg: std_logic;
    
begin
    SYNC_PROC : process (clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                cont_reg <= (others=>'0');
                state <= S0;
            else
                state <= next_state;
                cont_reg <= next_cont;
            end if;
        end if;
    end process;

    OUTPUT_DECODE : process (state,ain)
    begin
        yout_reg <= '0';
        case (state) is
            when S0 =>
                yout_reg <= '1';
                
            when S1 => 
                yout_reg <= '0';
                
            when S2 =>
               yout_reg <= '0';
                 
            when others =>
                yout_reg <= '0';
        end case;
    end process;
    
    NEXT_STATE_DECODE : process (state,ain,cont_reg)
    begin
        next_state <= S0;
        next_cont <= cont_reg;
        

        
        case (state) is
            when S0 =>
                if (ain = '1') then
                    next_state <= S1;
                    next_cont <= std_logic_vector(unsigned(cont_reg)+1);
                elsif(ain = '0') then
                    next_state <= S0;
                end if;    
                
            when S1 =>
                if (ain = '1') then
                    next_state <= S2;
                    next_cont <= std_logic_vector(unsigned(cont_reg)+1);
                elsif(ain = '0') then
                    next_state <= S1;
                end if; 
                               
            when S2 =>
                if (ain = '1') then        
                    next_state <= S0;
                    next_cont <= std_logic_vector(unsigned(cont_reg)+1);
                elsif(ain = '0') then
                        next_state <= S2;
                end if; 
                
            when others =>
                next_state <= S0;
        end case;
    end process; 

yout <= yout_reg;
cont <= cont_reg;

end Behavioral;
