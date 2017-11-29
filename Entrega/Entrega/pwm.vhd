----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2017 11:36:20
-- Design Name: 
-- Module Name: pwm - Behavioral
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

entity pwm is
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           en_2_cycles : in STD_LOGIC;
           sample_in : in STD_LOGIC_VECTOR (7 downto 0);
           sample_request : out STD_LOGIC;
           pwm_pulse : out STD_LOGIC);
end pwm;

architecture Behavioral of pwm is

    signal r_reg: unsigned(8 downto 0);
    signal r_next : unsigned (8 downto 0);
    signal buf_next : std_logic ;
    signal buf_reg : std_logic ; 
    signal ssample_request: std_logic;

begin

SYNC_PROC : process(clk_12megas,reset)
    begin
        if (reset='1') then
            r_reg<=(others=>'0');
            buf_reg<='0';
        elsif(rising_edge(clk_12megas) and en_2_cycles='1') then
            r_reg<=r_next;
            buf_reg<=buf_next;           
        end if;
    end process;
 
OUTPUT_DECODE: process (r_next)
    begin
        if(r_next=299)then
            ssample_request <= '1';            
        else
            ssample_request <= '0';
        end if;
        
        pwm_pulse <= buf_reg;
     end process;   
           
NEXT_STATE_DECODE :process(r_reg,buf_reg)
    begin
    --if(rising_edge(en_2_cycles)) then        
        if(r_next=299)then
           r_next <= (others=>'0');
        else
           r_next <= r_reg +1;
        end if;
        
        if(r_reg<unsigned(sample_in) or sample_in="0000000") then
            buf_next <= '1';
        else
            buf_next <= '0';
        end if;
       -- end if;
    end process;

end Behavioral;
