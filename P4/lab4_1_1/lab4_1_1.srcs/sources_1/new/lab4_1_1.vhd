----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2017 12:11:17
-- Design Name: 
-- Module Name: lab4_1_1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab4_1_1 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           sig : out STD_LOGIC;
           MMCM : out STD_LOGIC);
end lab4_1_1;

architecture Behavioral of lab4_1_1 is

    Signal clk5 : STD_LOGIC;
    Signal counter : unsigned(21 downto 0) := (others=>'0');
    Signal salida : STD_LOGIC := '0';
    
    component clk_wiz_0
        Port( clk_out1 : out STD_LOGIC;
              reset: in STD_LOGIC;
              locked: out STD_LOGIC;
              clk_in : in STD_LOGIC);
    end component;
    
begin

    Cach: clk_wiz_0 Port map(clk5,rst,MMCM,clk);
    
    process(clk5)
    begin
        if rst = '1' then
            counter <= (others=>'0');
            salida <= '0';
        elsif rising_edge(clk5) and en = '1' then
            counter <= counter+1;
            if counter >= 2499999 then
                salida <= not salida;
                counter <= (others=>'0');
            end if;
        end if;
     end process;
    
    sig <= salida;
end Behavioral;
