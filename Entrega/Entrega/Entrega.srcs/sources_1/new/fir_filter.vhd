----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2017 12:56:26
-- Design Name: 
-- Module Name: fir_filter - Behavioral
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

entity fir_filter is
    Port ( clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Sample_In : in signed (sample_size-1 downto 0);
    Sample_In_enable : in STD_LOGIC;
    filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
    Sample_Out : out signed (sample_size-1 downto 0);
    Sample_Out_ready : out STD_LOGIC);
end fir_filter;

architecture Behavioral of fir_filter is
    Component data_route_fir_filter
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
    End component;
    
    Component Moore_fir_filter
        Port ( clk : in STD_LOGIC;
               new_sample : in STD_LOGIC;
               reset : in STD_LOGIC;
               m : out STD_LOGIC_VECTOR (2 downto 0);
               load : out STD_LOGIC;
               processed_sample: out STD_LOGIC);
    End component;    
    signal sm: STD_LOGIC_VECTOR (2 downto 0);
    signal sload: std_logic:='0';
    signal sc0,sc1,sc2,sc3,sc4: signed(sample_size-1 downto 0);
    
    constant c0lp, c4lp: signed(sample_size-1 downto 0):="00000101";
    constant c1lp, c3lp: signed(sample_size-1 downto 0):="00111111";
    constant c2lp: signed(sample_size-1 downto 0):="00111001";
    
    constant c0hp, c4hp: signed(sample_size-1 downto 0):="10000001";
    constant c1hp, c3hp: signed(sample_size-1 downto 0):="10011010";
    constant c2hp: signed(sample_size-1 downto 0):="01001101";

    
begin
        
        process(clk,filter_select)
            begin
                if(filter_select='0')then--lowpass
                    sc0<=c0lp;
                    sc1<=c1lp;
                    sc2<=c2lp;
                    sc3<=c3lp;
                    sc4<=c4lp;
                elsif(filter_select='1')then--highpass
                    sc0<=c0hp;
                    sc1<=c1hp;
                    sc2<=c2hp;
                    sc3<=c3hp;
                    sc4<=c4hp;
                else
                    sc0<=(others=>'0');
                    sc1<=(others=>'0');
                    sc2<=(others=>'0');
                    sc3<=(others=>'0');
                    sc4<=(others=>'0');
                end if;
         end process;
         
         data_route: data_route_fir_filter port map(Sample_In,Sample_In,Sample_In,Sample_In,Sample_In,sc0,sc1,sc2,sc3,sc4,reset,sm,sload,Sample_Out);
         FSMD: Moore_fir_filter port map(clk,Sample_In_enable,reset,sm,sload,Sample_Out_ready);

end Behavioral;
