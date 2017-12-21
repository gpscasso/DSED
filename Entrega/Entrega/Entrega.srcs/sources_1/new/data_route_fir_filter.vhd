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
    Port ( clk : in STD_LOGIC;
           x0 : in signed (sample_size-1 downto 0);
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
           y : out signed (sample_size-1 downto 0));
end data_route_fir_filter;

architecture Behavioral of data_route_fir_filter is

    signal r_reg, r_next: signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal r_r_reg, rr_next : signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal r_s_reg, rs_next: signed (sample_size-1+sample_size downto 0):=(others => '0');
    signal X : signed (sample_size-1 downto 0):=(others => '0');
    signal C : signed (sample_size-1 downto 0):=(others => '0');
    signal sy, next_y : signed (sample_size-1 downto 0);
    
begin

    process (m,x0,x1,x2,x3,x4,c0,c1,c2,c3,c4)
        begin
           case m is
              when "000" => X <= x0; C <= c0;
              when "001" => X <= x1; C <= c1;
              when "010" => X <= x2; C <= c2;
              when "011" => X <= x3; C <= c3;
              when "100" => X <= x4; C <= c4;
              when others => X <= (others => '0'); C <= (others => '0');
           end case;
    end process;
    
    process(reset,m,clk,r_next,rr_next,rs_next,next_y)
         begin
             if(reset='1')then
                 r_reg<=(others => '0');
                 r_r_reg<=(others => '0');
                 r_s_reg<=(others => '0');
                 sy <= (others => '0');
             elsif (rising_edge(clk)) then
                 r_reg<=r_next;
                 r_r_reg<=rr_next;
                 r_s_reg<=rs_next; 
                 if(m ="111") then
                     r_reg<=(others => '0');
                     r_r_reg<=(others => '0');
                     r_s_reg<=(others => '0');
                 end if;  
                 sy <= next_y;      
            end if;                
     end process;
     
     process(load,X,C,r_reg,r_s_reg,r_r_reg)
     begin
         r_next <= r_reg;
         rr_next <= r_r_reg;
         rs_next <= r_s_reg;   
         if(load='1') then
            r_next <= X*C;
            rr_next <= r_reg;
            rs_next <= r_s_reg + r_r_reg;
        end if;
    end process;
     
    
    process(m,r_s_reg,sy)
    begin
        next_y <= sy;
        if(m = "111") then
            next_y <= r_s_reg((2*sample_size)-2 downto sample_size-1);
        end if;
    end process;
    
    y <= sy;
end Behavioral;