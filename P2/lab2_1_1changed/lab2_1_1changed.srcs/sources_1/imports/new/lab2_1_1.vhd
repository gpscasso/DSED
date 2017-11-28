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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std;

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
           s_out : out STD_LOGIC_VECTOR (3 downto 0));
end lab2_1_1;

architecture Behavioral of lab2_1_1 is

    component fulladder_dataflow
        Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
     end component;
    
    signal G,P,suma: STD_LOGIC_VECTOR (3 downto 0);
    signal C: STD_LOGIC_VECTOR (4 downto 0);

    
begin
    
    --Gi=Ai*Bi
    G(0)<=a_in(0) and b_in(0);
    G(1)<=a_in(1) and b_in(1);
    G(2)<=a_in(2) and b_in(2);
    G(3)<=a_in(3) and b_in(3);
    
    --Pi=Ai+Bi
    P(0)<=a_in(0) or b_in(0);
    P(1)<=a_in(1) or b_in(1);
    P(2)<=a_in(2) or b_in(2);
    P(3)<=a_in(3) or b_in(3);
    
    --Acarreos
    C(0)<= c_in;    
    C(1)<=G(0) or (P(0) and C(0));
    C(2)<=G(1) or (P(1) and C(1));
    C(3)<=G(2) or (P(2) and C(2));
    C(4)<=G(3) or (P(3) and C(3));--cout
    
    sum0: fulladder_dataflow Port map(a_in(0),b_in(0),C(0),suma(0),open);
    sum1: fulladder_dataflow Port map(a_in(1),b_in(1),C(1),suma(1),open);
    sum2: fulladder_dataflow Port map(a_in(2),b_in(2),C(2),suma(2),open);
    sum3: fulladder_dataflow Port map(a_in(3),b_in(3),C(3),suma(3),open);
    
    c_out<=C(4);
    s_out<=suma;
    

end Behavioral;
