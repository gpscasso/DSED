----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2017 16:15:01
-- Design Name: 
-- Module Name: controlador - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controlador is
    Port ( clk_100Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; -- BTNU
           clk_12Mhz: out STD_LOGIC;
           -- buttons
           BTNC : in STD_LOGIC; -- clear
           BTNL : in STD_LOGIC; -- rec
           BTNR : in STD_LOGIC; -- reproducir 
           -- switchs
     --      sw0 : in STD_LOGIC;
     --      sw1 : in STD_LOGIC;
           -- interfaz de audio (grabado)
           record_enable : out STD_LOGIC;
           sample_out : in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_out_ready : in STD_LOGIC;
           -- interfaz de audio (reproducción)
           play_enable : out STD_LOGIC;
           sample_in : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_request: in STD_LOGIC;
           -- RAM
           ena: out STD_LOGIC;
           wea : out STD_LOGIC_VECTOR(0 downto 0);
           addra : out STD_LOGIC_VECTOR(18 downto 0);
           dina: out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           douta: in STD_LOGIC_VECTOR(sample_size-1 downto 0)
           -- filtro FIR
          -- sample_in_fir : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
          -- sample_in_enable_fir : out STD_LOGIC;
          -- filter_select : out STD_LOGIC;
          -- sample_out_fir: in STD_LOGIC_VECTOR(sample_size-1 downto 0);
          -- sample_out_ready_fir : in STD_LOGIC
           );
end controlador;

architecture Behavioral of controlador is

    Component clk_wiz_0
        Port( clk12 : out STD_LOGIC;
              reset : in STD_LOGIC;
              clk100 : in STD_LOGIC);
    End component;

    signal pointer : STD_LOGIC_VECTOR(18 downto 0);
    signal sample_RAM : STD_LOGIC_VECTOR(sample_size-1 downto 0);
    
    signal swea :  STD_LOGIC_VECTOR(0 downto 0);
    signal saddra :  STD_LOGIC_VECTOR(18 downto 0);
    signal sdina:  STD_LOGIC_VECTOR(sample_size-1 downto 0);
    signal sdouta:  STD_LOGIC_VECTOR(sample_size-1 downto 0);

begin
    
    recorded_sample: process(sample_out_ready,BTNL)
    begin
        if(BTNL = '1') then
            record_enable <= '1';
            if(sample_out_ready = '1') then
                swea <= "1";
                saddra <= pointer;
                sdina <= sample_out;
                pointer <= std_logic_vector(unsigned(pointer)+1);
            else
                swea <= "0";
            end if;
        else
            record_enable <= '0';
        end if;
    end process;
    
    play_sample: process(clk_100Mhz,sample_request,BTNR)
    begin
        if(BTNR = '1') then
            play_enable <= '1';
            if(sample_request = '1') then
                wea <= "0";
                addra <= std_logic_vector(unsigned(pointer)-1);
                sample_RAM <= douta;
                pointer <= std_logic_vector(unsigned(pointer)-1);
            end if;
        else
            play_enable <= '0';
        end if;
    end process;
    
    process_sample: process(sample_RAM)
    begin
        sample_in <= sample_RAM;
    end process;
    
    clear_RAM: process(BTNC)
    begin
        if(rising_edge(BTNC)) then
            wea <= "1";
            dina <= (others=>'0');
            for i in 0 to to_integer(unsigned(pointer)) loop
                wea <="1";
             --   addra <= std_logic_vector(to_unsigned(i,pointer'length));
            end loop;
        end if;
    end process;

    reloj: clk_wiz_0 port map(clk_12Mhz,reset,clk_100Mhz);
    
    
end Behavioral;
