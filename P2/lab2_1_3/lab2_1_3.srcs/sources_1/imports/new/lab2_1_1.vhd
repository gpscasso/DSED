----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2017 13:12:57
-- Design Name: 
-- Module Name: lab2_1_1 - Behavioral
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
use ieee.numeric_std;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab2_1_1 is
    Port ( a_in : in STD_LOGIC_VECTOR (3 downto 0);
           b_in : in STD_LOGIC_VECTOR (3 downto 0);
           c_in : in STD_LOGIC;
           s_out : out STD_LOGIC_VECTOR (4 downto 0);
           error_out: out STD_LOGIC);
end lab2_1_1;

architecture Behavioral of lab2_1_1 is
    signal a1, b1: STD_LOGIC_VECTOR (4 downto 0);
begin

    process(a_in,b_in)
    begin
        if (a_in >"1001" or b_in>"1001") then
            error_out<='1';
        else
            error_out<='0';
        end if;
    end process;    
    
    
    a1 <= '0'&a_in; 
    b1 <= '0'&b_in; 
    
    s_out <= a1 + b1 + c_in;


end Behavioral;
