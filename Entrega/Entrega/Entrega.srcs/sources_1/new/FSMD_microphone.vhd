----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2017 23:49:28
-- Design Name: 
-- Module Name: FSMD_microphone - Behavioral
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

entity FSMD_microphone is
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable_4_cycles : in STD_LOGIC;
           micro_data : in STD_LOGIC;
           sample_out : out STD_LOGIC_VECTOR (7 downto 0);
           sample_out_ready : out STD_LOGIC);
end FSMD_microphone;

architecture Behavioral of FSMD_microphone is
    type state_type is (S0,S1,S2);
    signal state, next_state : state_type;
    signal dato1, dato2, next_dato1, next_dato2: STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
    signal primer_ciclo, next_primer_ciclo : STD_LOGIC := '0';
    
    signal next_cuenta, cuenta_reg : STD_LOGIC_VECTOR(8 downto 0) := (others=>'0');
    
    signal sout : STD_LOGIC_VECTOR(7 downto 0);
    signal sready : STD_LOGIC;

begin

SYNC_PROC : process (clk_12megas,reset)
begin
    if (reset = '1') then
        state <= S0;
        cuenta_reg <= (others=>'0');
        primer_ciclo <= '0';
        dato1 <= (others=>'0');
        dato2 <= (others=>'0');
    elsif rising_edge(clk_12megas) and enable_4_cycles = '1' then
        state <= next_state;
        cuenta_reg <= next_cuenta;
        primer_ciclo <= next_primer_ciclo;
        dato1 <= next_dato1;
        dato2 <= next_dato2;
    end if;
    
end process;

OUTPUT_DECODE : process (state,micro_data,cuenta_reg,primer_ciclo,enable_4_cycles)
begin
    sready <= '0';
    next_dato1 <= dato1;
    next_dato2 <= dato2;
    next_cuenta <= cuenta_reg;
    if(primer_ciclo = '0' and unsigned(cuenta_reg)=0) then
        sout <= (others=>'0');
    end if;
    next_primer_ciclo <= primer_ciclo;
    
    case (state) is
        when S0 =>
            next_cuenta <= std_logic_vector(unsigned(cuenta_reg)+1);
            
            if(micro_data = '1') then
                next_dato1 <= std_logic_vector(unsigned(dato1)+1);
                next_dato2 <= std_logic_vector(unsigned(dato2)+1);
            end if;
             
        when S1 => 
            next_cuenta <= std_logic_vector(unsigned(cuenta_reg)+1);
            
            if(micro_data = '1') then
                next_dato1 <= std_logic_vector(unsigned(dato1)+1);
             end if;
             
             if(primer_ciclo = '1' and unsigned(cuenta_reg)=106) then
                sout <= dato2;
                next_dato2 <= (others=>'0');
                sready <= enable_4_cycles;
             else
                sready <= '0';
             end if;                       
            
        when S2 =>
             if (unsigned(cuenta_reg) = 299) then
                next_cuenta <= (others => '0');
                next_primer_ciclo <= '1';
             else
                next_cuenta <= std_logic_vector(unsigned(cuenta_reg)+1);
             end if;
            
             if(micro_data = '1') then
                 next_dato2 <= std_logic_vector(unsigned(dato2)+1);
             end if;
             
             if(unsigned(cuenta_reg)=256) then
                sout <= dato1;
                next_dato1 <= (others=>'0');
                sready <= enable_4_cycles;
             else
                sready <= '0';
             end if;  
              
     end case;
end process;



NEXT_STATE_DECODE : process (state,next_cuenta)
begin
    next_state <= S0;
    
    case (state) is
        when S0 =>
            if (unsigned(next_cuenta) = 256) then
                next_state <= S2;
            elsif(unsigned(next_cuenta) = 106) then
                next_state <= S1;
            end if;
            
        when S1 =>
            if (unsigned(next_cuenta) = 150) then
                next_state <= S0;
            else
                next_state <= S1;
            end if; 
                           
        when S2 =>
            if (unsigned(next_cuenta) = 0) then
                next_state <= S0;
            else
                next_state <= S2;
            end if; 
    
        when others =>
            next_state <= S0;
    end case;
    
end process; 

sample_out <= sout;
sample_out_ready <= sready;

end Behavioral;
