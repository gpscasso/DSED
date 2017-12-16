----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2017 17:09:47
-- Design Name: 
-- Module Name: RAM_tb - Behavioral
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
USE ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_tb is
--  Port ( );
end RAM_tb;

architecture Behavioral of RAM_tb is
    component blk_mem_gen_0
        port (  clka : IN STD_LOGIC;
                ena : IN STD_LOGIC;
                wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
                addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
                dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
    end component;
    
    signal sclk :std_logic := '0';
    constant half_period12 : time := 41.666666666666 ns;
    signal sena: std_logic := '1';
    
    
    signal swea :STD_LOGIC_VECTOR(0 DOWNTO 0) := "0";
    signal saddra: STD_LOGIC_VECTOR(18 DOWNTO 0) := (others=>'0');
    signal sdina: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');
    signal sdouta: STD_LOGIC_VECTOR(7 DOWNTO 0);
    
begin

    sclk <= not sclk after half_period12;
    oros: blk_mem_gen_0 port map(sclk,sena,swea,saddra,sdina,sdouta);
     
     stim_proc: process
     begin  
        swea <= "0"; 
        saddra <= (others=>'0');
        sdina <= x"FF";
        wait for half_period12*20; 
        
        -- start reading data from RAM 
        for i in 0 to 5 loop
            saddra <= std_logic_vector(unsigned(saddra) + 1);
            wait for half_period12*10;
        end loop;
        
        swea <= "1";
        saddra <= (others=>'0');
        wait for half_period12*20; 
        
        -- start writing to RAM
        for i in 0 to 5 loop
            saddra <= std_logic_vector(unsigned(saddra) + 1);
            sdina <= sdina-x"01";
            wait for half_period12*10;
        end loop;
          
    end process;

end Behavioral;
