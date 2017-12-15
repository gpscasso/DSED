----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2017 00:05:24
-- Design Name: 
-- Module Name: lab2_4_2 - Behavioral
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
entity lab2_4_2 is
end lab2_4_2;
architecture Behavioral of lab2_4_2 is
    signal A, G1 : std_logic := '0';
    signal G2 : std_logic := '1';
begin
process
begin
    wait for 40 ns; A <= '1';
    wait for 20 ns; G1 <= '1';
    wait for 20 ns; G2 <= '0';
    wait for 20 ns; A <= '0';
    wait for 20 ns; G1 <= '0';
    wait for 20 ns; G2 <= '1';
    wait for 100 ns;
end process;
end Behavioral;
