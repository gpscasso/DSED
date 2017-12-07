----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2017 20:57:25
-- Design Name: 
-- Module Name: data_route_fir_filter - Behavioral
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
use work.package_dsed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;



-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_route_fir_filter is
    Port ( x0 : in signed (sample_size-1 downto 0);
           x1 : in signed (sample_size-1 downto 0);
           x2 : in signed (sample_size-1 downto 0);
           x3 : in signed (sample_size-1 downto 0);
           x4 : in signed (sample_size-1 downto 0);
           c0 : in signed (sample_size-1 downto 0);
           c1 : in signed (sample_size-1 downto 0);
           c2 : in signed (sample_size-1 downto 0);
           c3 : in signed (sample_size-1 downto 0);
           c4 : in signed (sample_size-1 downto 0);
           reset: in STD_LOGIC;
           m : in STD_LOGIC_VECTOR (2 downto 0);
           load : in STD_LOGIC;
           y : out signed (7 downto 0));
end data_route_fir_filter;

architecture Behavioral of data_route_fir_filter is

    signal r_reg: signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal r_r_reg : signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal r_s_reg: signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal X : signed (sample_size-1 downto 0):=(others => '0');
    signal C : signed (sample_size-1 downto 0):=(others => '0');
    
begin

    process (m,load)
        begin
           case m is
              when "000" => X <= x0;
              when "001" => X <= x1;
              when "010" => X <= x2;
              when "011" => X <= x3;
              when "100" => X <= x4;
              when "101" => X <= (others => '0');
              when "110" => X <= (others => '0');
              when others => X <= (others => '0');
           end case;
           case m is
              when "000" => C <= c0;
              when "001" => C <= c1;
              when "010" => C <= c2;
              when "011" => C <= c3;
              when "100" => C <= c4;
              when "101" => C <= (others => '0');
              when "110" => C <= (others => '0');
              when others => C <= (others => '0');
           end case; 
    end process;
    
    process(load,reset)
        begin
            if (reset='1') then
                r_reg<=(others => '0');
                r_r_reg<=(others => '0');
                r_s_reg<=(others => '0');
            elsif (rising_edge(load)) then
                r_reg<=X*C;
                r_r_reg<=r_reg;
                r_s_reg<=r_s_reg + r_r_reg;
            end if;
    end process;
    
    y<=r_s_reg(sample_size-1+sample_size downto sample_size);


end Behavioral;
