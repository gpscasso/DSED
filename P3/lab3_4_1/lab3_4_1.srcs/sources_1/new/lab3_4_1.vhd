----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2017 13:27:23
-- Design Name: 
-- Module Name: lab3_4_1 - Behavioral
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

entity lab3_4_1 is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           clear : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end lab3_4_1;

architecture Behavioral of lab3_4_1 is

    component lab3_2_3
        Port ( clk : in STD_LOGIC;
           T : in STD_LOGIC;
           clear: in STD_LOGIC;
           Q : out STD_LOGIC);
    end component;
    
    Signal aux : STD_LOGIC_VECTOR (7 downto 0);
    Signal tmp : STD_LOGIC_VECTOR (7 downto 0);
begin

    TFF0: lab3_2_3 Port map(clk,en,clear,aux(0));
    tmp(0) <= en and aux(0);
    TFF1: lab3_2_3 Port map(clk,tmp(0),clear,aux(1));
    tmp(1) <= tmp(0) and aux(1);
    TFF2: lab3_2_3 Port map(clk,tmp(1),clear,aux(2));
    tmp(2) <= tmp(1) and aux(2);
    TFF3: lab3_2_3 Port map(clk,tmp(2),clear,aux(3));
    tmp(3) <= tmp(2) and aux(3);
    TFF4: lab3_2_3 Port map(clk,tmp(3),clear,aux(4));
    tmp(4) <= tmp(3) and aux(4);
    TFF5: lab3_2_3 Port map(clk,tmp(4),clear,aux(5));
    tmp(5) <= tmp(4) and aux(5);
    TFF6: lab3_2_3 Port map(clk,tmp(5),clear,aux(6));
    tmp(6) <= tmp(5) and aux(6);
    TFF7: lab3_2_3 Port map(clk,tmp(6),clear,aux(7));
    tmp(7) <= tmp(6) and aux(7);

    Q <= aux;    
    
end Behavioral;
