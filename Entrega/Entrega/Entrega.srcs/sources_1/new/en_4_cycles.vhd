----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2017 13:35:15
-- Design Name: 
-- Module Name: en_4_cycles - Behavioral
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

entity en_4_cycles is
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_3megas : out STD_LOGIC;
           en_2_cycles : out STD_LOGIC;
           en_4_cycles : out STD_LOGIC);
end en_4_cycles;

architecture Behavioral of en_4_cycles is

    signal clk3, en2, en4 : std_logic := '0';
    signal count : std_logic_vector(1 downto 0) := "00";
    
begin

    process(clk_12megas)
    begin
        if reset = '1' then
            clk3 <= '0';
            en2 <= '0';
            en4 <= '0';
            count <= "00";
            
        elsif rising_edge(clk_12megas) then
            count <= std_logic_vector(unsigned(count) + 1);
            en4 <= '0';
            
            if count = "00" then
                en2 <= not(en2);
                
            elsif count = "01" then
                clk3 <= not(clk3);
                en2 <= not(en2);
                en4 <= '1';
                
            elsif count = "10" then
                en2 <= not(en2);
                
            else
                clk3 <= not(clk3);
                en2 <= not(en2);
            end if;
        end if;
    end process;
    
    clk_3megas <= clk3;
    en_2_cycles <= en2;
    en_4_cycles <= en4;

end Behavioral;
