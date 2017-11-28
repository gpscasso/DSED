----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2017 12:45:52
-- Design Name: 
-- Module Name: lab3_2_3 - Behavioral
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

entity lab3_2_3 is
    Port ( clk : in STD_LOGIC;
           T : in STD_LOGIC;
           en : in STD_LOGIC;
           Q : out STD_LOGIC);
end lab3_2_3;

architecture Behavioral of lab3_2_3 is
    Signal tmp : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if falling_edge(clk) then
            if (en = '1') and (T = '1') then
                tmp <= not tmp;
            else
                tmp <= tmp;
            end if;
        end if;
    end process;
    Q <= tmp; 
end Behavioral;
