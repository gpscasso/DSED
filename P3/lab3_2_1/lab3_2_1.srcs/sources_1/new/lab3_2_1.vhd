----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2017 11:43:37
-- Design Name: 
-- Module Name: lab3_2_1 - Behavioral
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

entity lab3_2_1 is
    Port ( d : in STD_LOGIC;
       clk : in STD_LOGIC;
       qa: out STD_LOGIC;
       qb: out STD_LOGIC;
       qc: out STD_LOGIC);
end lab3_2_1;

architecture Behavioral of lab3_2_1 is

begin
    process(clk, D)
    begin
        if rising_edge(clk) then
            qb <= D;
        elsif falling_edge(clk) then
            qc <= D;
        end if;   
        
        if clk = '1' then
            qa <= D;
        end if;
        
    end process;
end Behavioral;
