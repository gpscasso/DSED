----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2017 12:23:00
-- Design Name: 
-- Module Name: lab2_1_3 - Behavioral
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

entity lab2_1_3 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
       b : in STD_LOGIC_VECTOR (3 downto 0);
       c : in STD_LOGIC;
       an_out : out STD_LOGIC_VECTOR (7 downto 0);
       led : out STD_LOGIC;
       seg7 : out STD_LOGIC_VECTOR (0 to 6));
end lab2_1_3;

architecture Behavioral of lab2_1_3 is
    
    component lab2_1_1
        Port ( a_in : in STD_LOGIC_VECTOR (3 downto 0);
               b_in : in STD_LOGIC_VECTOR (3 downto 0);
               c_in : in STD_LOGIC;
               s_out : out STD_LOGIC_VECTOR (4 downto 0);
               error_out: out STD_LOGIC);
     end component;
     
     component lab1_6_1_partA
         Port ( v : in STD_LOGIC_VECTOR (4 downto 0);
                error : in STD_LOGIC;           
                z : out STD_LOGIC;
                m : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component bcdto7segment_dataflow
        Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
               an : out STD_LOGIC_VECTOR (7 downto 0);
               seg : out STD_LOGIC_VECTOR (0 to 6));
    end component;
    
     signal c1, s_error: STD_LOGIC;
     signal s2 : STD_LOGIC_VECTOR (3 downto 0);
     signal s1 : STD_LOGIC_VECTOR (4 downto 0);
    
begin
    suma: lab2_1_1 Port map(a,b,c,s1,s_error);
    reparto: lab1_6_1_partA Port map(s1,s_error,led,s2);
    display: bcdto7segment_dataflow Port map(s2,an_out,seg7);

end Behavioral;
