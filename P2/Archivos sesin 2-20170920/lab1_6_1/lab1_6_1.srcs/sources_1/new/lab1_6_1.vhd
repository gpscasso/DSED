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

entity lab1_6_1 is
    Port ( v_i : in STD_LOGIC_VECTOR (3 downto 0);
           seg_o : out STD_LOGIC_VECTOR (0 to 6);
           an_o: out STD_LOGIC_VECTOR (7 downto 0); 
           z_o : out STD_LOGIC;)
end lab1_6_1;

architecture Behavioral of lab1_6_1 is

    component lab1_6_1_partA
           Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
           m : out STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC);
    end component;
    
    component bcdto7segment_dataflow is
        Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
               an : out STD_LOGIC_VECTOR (7 downto 0);
               seg : out STD_LOGIC_VECTOR (0 to 6));
    end component;
    
    signal s1 : STD_LOGIC_VECTOR (3 downto 0);

begin
    
    partA : lab1_6_1_partA Port map(v_i,s1,z_o);
    
    bcd7seg : bcdto7segment_dataflow Port map(s1,an_o,seg_o);
    



end Behavioral;
