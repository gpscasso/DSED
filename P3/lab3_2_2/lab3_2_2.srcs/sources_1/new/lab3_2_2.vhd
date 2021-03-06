----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2017 12:25:13
-- Design Name: 
-- Module Name: lab3_2_2 - Behavioral
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

entity lab3_2_2 is
    Port ( clk : in STD_LOGIC;
           d : in STD_LOGIC;
           rst : in STD_LOGIC;
           ce : in STD_LOGIC;
           q : out STD_LOGIC);
end lab3_2_2;

architecture Behavioral of lab3_2_2 is
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                q <='0';
            elsif ce = '1' then
                q <= d;
            end if;
        end if;
    end process;
    

end Behavioral;
