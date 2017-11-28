----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.10.2017 13:25:27
-- Design Name: 
-- Module Name: lab2_3_1 - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab2_3_1 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           ROM_data : out STD_LOGIC_VECTOR (3 downto 0));
end lab2_3_1;

architecture Behavioral of lab2_3_1 is

type rom is array (0 to 2**4-1) of std_logic_vector(3 downto 0);

constant MY_ROM : rom :=(
    0=>"0000",
    1=>"0001",
    2=>"0010",
    3=>"0011",
    4=>"0100",
    5=>"0101",
    6=>"0110",
    7=>"0111",
    8=>"1000",
    9=>"1001",
    10=>"0000",
    11=>"0000",
    12=>"0000",
    13=>"0000",
    14=>"0000",
    15=>"0000"
 );
 
 signal mult: std_logic_vector(3 downto 0);
 
begin

process(a,b)
    begin
        mult<=a*b;
        case mult is
            when "0000" => ROM_data <= MY_ROM(0);
            when "0001" => ROM_data <= MY_ROM(1);
            when "0010" => ROM_data <= MY_ROM(2);
            when "0011" => ROM_data <= MY_ROM(3);
            when "0100" => ROM_data <= MY_ROM(4);
            when "0101" => ROM_data <= MY_ROM(5);
            when "0110" => ROM_data <= MY_ROM(6);
            when "0111" => ROM_data <= MY_ROM(7);
            when "1000" => ROM_data <= MY_ROM(8);
            when "1001" => ROM_data <= MY_ROM(9);
            when others => ROM_data <= "0000";
         end case;
    end process;

end Behavioral;
