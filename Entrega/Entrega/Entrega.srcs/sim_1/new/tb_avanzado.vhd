LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
use work.package_dsed.all;

ENTITY tb_avanzado IS
END tb_avanzado;

ARCHITECTURE behavior OF tb_avanzado IS
   component fir_filter
         Port ( clk : in STD_LOGIC;
             Reset : in STD_LOGIC;
             Sample_In : in signed (sample_size-1 downto 0);
             Sample_In_enable : in STD_LOGIC;
             filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
             Sample_Out : out signed (sample_size-1 downto 0);
             Sample_Out_ready : out STD_LOGIC);  
    end component;
    
    -- Clk and reset
    signal sclk : STD_LOGIC :='0';
    signal sreset : STD_LOGIC := '1';
    constant half_period12 : time := 41.666666666666 ns;
    
    signal sSample_Out_ready : STD_LOGIC :='0';
    signal sSample_In_enable : STD_LOGIC := '0';
    signal sfilter_select: STD_LOGIC:='0';
      
    -- Declaration of the reading signal
    signal sSample_In : signed(sample_size-1 downto 0) := (others => '0');
    
    -- Declaration of the writing signal
    signal sSample_Out : signed(sample_size-1 downto 0) := (others => '0');
    signal sMatlab_out : integer;
    signal c : STD_LOGIC := '1';
    
BEGIN

     filtro: fir_filter port map(sclk,sreset,sSample_In,sSample_In_enable,sfilter_select,sSample_Out,sSample_Out_ready);
    -- Clock statement
    sclk <= not sclk after half_period12;
    sreset <= '0' after 40 ns;    
    
    read_process : PROCESS (sSample_In_enable)
        FILE in_file : text OPEN read_mode IS "../../../Matlab/sample_in.dat";
        VARIABLE in_line : line;
        VARIABLE in_int : integer;
        VARIABLE in_read_ok : BOOLEAN;
    
        BEGIN
            if (sSample_In_enable'event and sSample_In_enable = '1') then
                if NOT endfile(in_file) then
                    ReadLine(in_file,in_line);
                    Read(in_line, in_int, in_read_ok);
                    sSample_In <= to_signed(in_int, sample_size); -- 8 = the bit width
                else
                    assert false report "Simulation Finished" severity failure;
                end if;
            end if; 
        end process;
        
        
    write_process: PROCESS(sSample_Out_ready,sfilter_select)
        FILE out_file : text;
        VARIABLE out_line : line;
        VARIABLE out_int : integer;
--C:\Users\Guille\Documents\Universidad\Sexto\1er Cuatri\DSED\Entrega\DSED\Entrega\Entrega\Matlab\sample_out_lp.dat
        BEGIN
            if(c='1') then
                if(sfilter_select='0') then
                    file_open(out_file,"../../../Matlab/sample_out_lp.dat",write_mode);
                else
                    file_open(out_file,"../../../Matlab/sample_out_hp.dat",write_mode);
                end if;
            end if;
            c <= '0';
            if(sSample_Out_ready'event and sSample_Out_ready = '1') then
                sMatlab_out <= to_integer(sSample_out);
                Write(out_line,sMatlab_out,left,sample_size);
                WriteLine(out_file,out_line); 
            end if;       
        end process;
        
    process
    begin
        wait for 50 us; sSample_In_enable <= '1';
        wait for 80 ns; sSample_In_enable <= '0';
    end process;
    END;
    
    