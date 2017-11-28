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
           c_out : out STD_LOGIC;
           s_out : out STD_LOGIC_VECTOR (3 downto 0);
           error_out: out STD_LOGIC);
end lab2_1_1;

architecture Behavioral of lab2_1_1 is

    component fulladder_dataflow
        Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
     end component;
    
    signal c1, c2, c3 : STD_LOGIC;
    
begin

    process(a_in,b_in)
    begin
        if (a_in >"1001" or b_in>"1001") then
            error_out<='1';
        else
            error_out<='0';
        end if;
    end process;    
        
    
    sum0: fulladder_dataflow Port map(a_in(0),b_in(0),c_in,s_out(0),c1);
    sum1: fulladder_dataflow Port map(a_in(1),b_in(1),c1,s_out(1),c2);
    sum2: fulladder_dataflow Port map(a_in(2),b_in(2),c2,s_out(2),c3);
    sum3: fulladder_dataflow Port map(a_in(3),b_in(3),c3,s_out(3),c_out);
    



end Behavioral;
