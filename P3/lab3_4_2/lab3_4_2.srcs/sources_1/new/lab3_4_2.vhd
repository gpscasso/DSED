----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2017 11:41:28
-- Design Name: 
-- Module Name: lab3_4_2 - Behavioral
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

entity lab3_4_2 is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end lab3_4_2;

architecture Behavioral of lab3_4_2 is
    signal aux : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
    process(clk)
    begin
        if falling_edge(clk) then
            if rst = '1' then
                aux <= "000";
            elsif en = '1' then
                case aux is
                    when "000" => aux <= "001";
                    when "001" => aux <= "011";
                    when "011" => aux <= "101";
                    when "101" => aux <= "111";
                    when "111" => aux <= "010";
                    when "010" => aux <= "000";
                    when others => aux <= "000";
                 end case;
            end if;
         end if;
    end process;
    Q <= aux;
end Behavioral;
