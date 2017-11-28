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

entity bcdto7segment_dataflow is
    Port ( clk : in STD_LOGIC;
           x : in STD_LOGIC_VECTOR (3 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (0 to 6));
end bcdto7segment_dataflow;

architecture Behavioral of bcdto7segment_dataflow is

    signal counter : integer := 1;
    signal an_s : STD_LOGIC_VECTOR (7 downto 0) := "11111101";
begin

process(clk)
begin
    if rising_edge(clk) then
        counter <= counter+1;
        if counter = 5000 and an_s = "11111110" then
            an_s <= "11111101";
            counter <= 0;
        elsif counter = 5000 and an_s = "11111101" then
            an_s <= "11111110";
            counter <= 0;
        end if;
     end if;
end process;

an <= an_s;    



process(x)
begin
    if an_s = "11111101" then
        if x > "1001" then
          seg <= "1001111";
        else 
          seg <= "0000001";
        end if;  
    else
        if(x="0000") then
          seg<="0000001";
        elsif(x="0001") then
          seg<="1001111";
        elsif(x="0010") then
          seg<="0010010";
        elsif(x="0011") then
          seg<="0000110";
        elsif(x="0100") then
          seg<="1001100";
        elsif(x="0101") then
          seg<="0100100";  
        elsif(x="0110") then
          seg<="0100000";
        elsif(x="0111") then
          seg<="0001111";
        elsif(x="1000") then
          seg<="0000000";
        elsif(x="1001") then
          seg<="0000100";
        elsif(x="1010") then
            seg<="0000001";
        elsif(x="1011") then
            seg<="1001111";
        elsif(x="1100") then
            seg<="0010010";
        elsif(x="1101") then
            seg<="0000110";
        elsif(x="1110") then
            seg<="1001100";
        elsif(x="1111") then
            seg<="0100100";
        end if;
    end if;
 

end process;



end Behavioral;
