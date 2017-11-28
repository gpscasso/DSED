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
    Port ( v : in STD_LOGIC_VECTOR (4 downto 0);
           error : in STD_LOGIC;           
           z : out STD_LOGIC;
           m : out STD_LOGIC_VECTOR (3 downto 0));
end lab1_6_1_partA;

architecture Behavioral of lab1_6_1_partA is

begin
process(v)
begin
    
    if(error='0') then
        if(v="00000" or v="01010") then
          m <= "0000";
        elsif(v="00001" or v="01011") then
          m <= "0001";
        elsif(v="00010" or v="01100") then
          m <= "0010";
        elsif(v="00011" or v="01101") then
          m <= "0011";
        elsif(v="00100" or v="01110") then
          m <= "0100";
        elsif(v="00101" or v="01111") then
          m <= "0101";  
        elsif(v="00110" or v="10000") then
          m <= "0110";  
        elsif(v="00111" or v="10001") then
          m <= "0111";  
        elsif(v="01000" or v="10010") then
          m <= "1000";   
        elsif(v="01001" or v="10011") then
          m <= "1001";  
        else
          m <= "1111";
        end if;
     
        if(v>"01001") then
          z <='1';
        else
          z <='0';
        end if;
    else
       m <= "1111"; 
    end if;

end process;



end Behavioral;
