----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2017 13:10:57
-- Design Name: 
-- Module Name: lab1_3_1 - Behavioral
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

entity lab1_3_1 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0));
end lab1_3_1;

architecture Behavioral of lab1_3_1 is

    component mux2_1 port(
        i0, i1: in STD_LOGIC_VECTOR (1 downto 0);
        sel: in STD_LOGIC;
        out0: out STD_LOGIC_VECTOR (1 downto 0)); 
    end component;   
    
begin

    mux: mux2_1 port map(
        i0 => x,
        i1 => y,
        sel => s,
        out0 => m);
    

end Behavioral; 
