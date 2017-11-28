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
    Port ( clk : in STD_LOGIC;
           v_i : in STD_LOGIC_VECTOR (3 downto 0);
           seg_o : out STD_LOGIC_VECTOR (0 to 6);
           an_o: out STD_LOGIC_VECTOR (7 downto 0));
end lab1_6_1;

architecture Behavioral of lab1_6_1 is

  --  component lab4_2_6
  --         Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
  --         m : out STD_LOGIC_VECTOR (3 downto 0);
  --         z : out STD_LOGIC);
  --  end component;
    
    component bcdto7segment_dataflow is
        Port ( clk : in STD_LOGIC;
               x : in STD_LOGIC_VECTOR (3 downto 0);
               an : out STD_LOGIC_VECTOR (7 downto 0);
               seg : out STD_LOGIC_VECTOR (0 to 6));
    end component;
    

    component clk_wiz_0 is
        Port (clk_out1 : out STD_LOGIC;
              locked : out STD_LOGIC;
              clk_in : in STD_LOGIC);
    end component;
    
 --   signal s1 : STD_LOGIC_VECTOR (3 downto 0);
    signal clk5 : STD_LOGIC;
    signal lol: STD_LOGIC := '1';
    
begin

    reloj : clk_wiz_0 Port map(clk5,lol,clk);
    
  --  partA : lab4_2_6 Port map(v_i,s1,z_o);
    
    bcd7seg : bcdto7segment_dataflow Port map(clk5,v_i,an_o,seg_o);
    



end Behavioral;
