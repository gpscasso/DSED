----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2017 19:13:14
-- Design Name: 
-- Module Name: lab5_3_1 - Behavioral
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

entity lab5_3_1 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (2 downto 0));
end lab5_3_1;

architecture Behavioral of lab5_3_1 is

    type state_type is (S000,S001,S011,S101,S111,S010);
    signal state, next_state : state_type;
    signal cont_reg, next_cont: STD_LOGIC_VECTOR(2 downto 0) := "000";

begin

    SYNC_PROC : process (clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                cont_reg <= "000";
                state <= S000;
            else
                state <= next_state;
                cont_reg <= next_cont;
            end if;
        end if;
    end process;
    
    NEXT_STATE_DECODE : process (state)
    begin
        next_cont <= "000";
        next_state <= S000;
        
        case(state) is
            when S000 =>
                next_cont <= "001";
                next_state <= S001;
            when S001 =>
                next_cont <= "011";
                next_state <= S011;
            when S011 =>
                next_cont <= "101";
                next_state <= S101;
            when S101 =>
                next_cont <= "111";
                next_state <= S111;
            when S111 =>
                next_cont <= "010";
                next_state <= S010;
            when S010 =>
                next_cont <= "000";
                next_state <= S000;
            when others =>
                next_cont <= "000";
                next_state <= S000;
            end case;
    end process;

count <= cont_reg;

end Behavioral;
