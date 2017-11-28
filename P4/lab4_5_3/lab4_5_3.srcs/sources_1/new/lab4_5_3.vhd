----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2017 13:17:28
-- Design Name: 
-- Module Name: lab4_5_1 - Behavioral
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
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab4_5_3 is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           updown : in STD_LOGIC;
           q_out : out STD_LOGIC_VECTOR (7 downto 0));
end lab4_5_3;

architecture Behavioral of lab4_5_3 is

    component clk_wiz_0 is
        Port (clk_5MHz : out STD_LOGIC;
              clk_in : in STD_LOGIC);
    end component;    
    
    component c_counter_binary_0 is
        Port (clk : in STD_LOGIC;
              ce : in STD_LOGIC;
              sclr : in STD_LOGIC;
              up : in STD_LOGIC;
              q : out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    signal clk5 : STD_LOGIC;
    signal clk1 : STD_LOGIC := '0';
    signal counteru : unsigned(21 downto 0) := (others=>'0');
    
begin

process(clk5)
    begin
        if rising_edge(clk5) then
            if rst = '1' then
                counteru <= (others=>'0');
                clk1 <= '0';
            end if;      
            counteru <= counteru+1;
            if counteru = 2499999 then
                clk1 <= not(clk1);
                counteru <= (others=>'0');
            end if;
         end if;
end process;


    relojo : clk_wiz_0 Port map(clk5,clk);
    counterd : c_counter_binary_0 Port map(clk1,en,rst,updown,q_out);
    




end Behavioral;
