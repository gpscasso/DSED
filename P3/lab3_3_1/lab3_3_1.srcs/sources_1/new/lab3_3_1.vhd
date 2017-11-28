----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2017 13:04:35
-- Design Name: 
-- Module Name: lab3_3_1 - Behavioral
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

entity lab3_3_1 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           seta : in STD_LOGIC;
           load : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end lab3_3_1;

architecture Behavioral of lab3_3_1 is
    constant var: STD_LOGIC_VECTOR := "1010";
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                Q <= "0000";
            elsif seta = '1' then
                Q <= var;
            elsif load = '1' then
                Q <= D;
            end if;
        end if;
     end process;

end Behavioral;
