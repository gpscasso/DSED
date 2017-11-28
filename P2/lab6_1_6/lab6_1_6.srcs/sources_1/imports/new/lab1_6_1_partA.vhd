----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2017 13:11:23
-- Design Name: 
-- Module Name: lab1_5_2 - Behavioral
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

entity lab1_6_1_partA is
    Port ( v : in STD_LOGIC_VECTOR (3 downto 0);           
           z : out STD_LOGIC;
           m : out STD_LOGIC_VECTOR (3 downto 0));
end lab1_6_1_partA;

architecture Behavioral of lab1_6_1_partA is

begin
process(v)
begin

    if(v="0000" or v="1010") then
      m <= "0000";
    elsif(v="0001" or v="1011") then
      m <= "0001";
    elsif(v="0010" or v="1100") then
      m <= "0010";
    elsif(v="0011" or v="1101") then
      m <= "0011";
    elsif(v="0100" or v="1110") then
      m <= "0100";
    elsif(v="0101" or v="1111") then
      m <= "0101";  
    elsif(v="0110") then
      m <= v;  
    elsif(v="0111") then
      m <= v;  
    elsif(v="1000") then
      m <= v;   
    elsif(v="1001") then
      m <= v;  
    else
      m <= v;
    end if;
 
    if(v>"1001") then
      z <='1';
    else
      z <='0';
    end if;

end process;



end Behavioral;
