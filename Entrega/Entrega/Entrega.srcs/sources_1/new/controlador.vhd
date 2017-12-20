
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
           sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
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
           douta: in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           -- filtro FIR
           sample_in_fir : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_in_enable_fir : out STD_LOGIC;
           filter_select : out STD_LOGIC;
           sample_out_fir: in STD_LOGIC_VECTOR(sample_size-1 downto 0);
           sample_out_ready_fir : in STD_LOGIC
           );
end controlador;

architecture Behavioral of controlador is

    Component clk_wiz_0
        Port( clk12 : out STD_LOGIC;
              reset : in STD_LOGIC;
              clk100 : in STD_LOGIC);
    End component;

    signal clk12M : std_logic;
    
    type state_type is (Srep,SL,SC,SRR,Snormal,Sfir1,Sfir2);
    signal state, next_state : state_type;

    signal pointer, cuenta_play, cuenta_play_r : STD_LOGIC_VECTOR(18 downto 0) := (others=>'0');
    signal next_pointer, next_cuenta, next_cuenta_r : STD_LOGIC_VECTOR(18 downto 0) := (others=>'0');
    
    signal srecord_enable : STD_LOGIC;
    
    signal sena : STD_LOGIC;
    signal swea :  STD_LOGIC_VECTOR(0 downto 0);
    signal saddra,next_addra :  STD_LOGIC_VECTOR(18 downto 0);
    signal sdina:  STD_LOGIC_VECTOR(sample_size-1 downto 0);

    signal splay_enable : STD_LOGIC;
    signal ssample_in,next_sample_in : STD_LOGIC_VECTOR(sample_size-1 downto 0);
    
    signal next_sample_in_fir, ssample_in_fir : STD_LOGIC_VECTOR(sample_size-1 downto 0);
    signal ssample_in_enable_fir, next_sample_in_enable_fir : STD_LOGIC;
    
    signal first, next_first : STD_LOGIC;
    
    signal sample_from_fir, next_sample_from_fir : STD_LOGIC_VECTOR(sample_size-1 downto 0);
    
    
begin
    
    SYNC_PROC : process(reset,clk12M)
    begin
        if(reset='1') then
            pointer <= (others=>'0');
            cuenta_play <= (others=>'0');
            cuenta_play_r <= (others=>'0');
            ssample_in <= (others=>'0');
            saddra <= (others=>'0');
            ssample_in_fir <= (others=>'0');
            ssample_in_enable_fir <= '0';
            first <= '1';
            state <= Srep;
            sample_from_fir <= (others=>'0');

            
        elsif(rising_edge(clk12M)) then
            pointer <= next_pointer;
            cuenta_play <= next_cuenta;
            cuenta_play_r <= next_cuenta_r;
            state <= next_state;
            ssample_in <= next_sample_in;
            saddra <= next_addra;
            ssample_in_fir <= next_sample_in_fir;
            ssample_in_enable_fir <= next_sample_in_enable_fir;
            first <= next_first;
            sample_from_fir <= next_sample_from_fir;
        end if;
    end process;
    
    
    OUTPUT_DECODE: process(clk12M,state,sample_out_ready,BTNL,sample_request, pointer, sample_out, cuenta_play, douta, ssample_in,saddra,cuenta_play_r,SW0,ssample_in_fir,ssample_in_enable_fir,first,sample_out_fir,SW1,sample_from_fir)
    begin
    srecord_enable <= '0';
    splay_enable <= '0';
    next_sample_in <= ssample_in;
    sena <= '0';
    swea <= "0";
    next_addra <= saddra;
    sdina <= (others => '0');
    next_pointer <= pointer;
    next_cuenta <= cuenta_play;
    next_cuenta_r <= cuenta_play_r;
    next_sample_in_fir <= ssample_in_fir;
    next_sample_in_enable_fir <= '0';
    next_first <= first;
    
            case state is
            when SRep =>
                sena <= '0';
                swea <= "0";
                splay_enable <= '0';
                srecord_enable <= '0';
                next_cuenta <= (others=>'0');
                next_addra <= (others=>'0');
                next_sample_in <= (others=>'0');
                next_sample_in_fir <= (others=>'0');
                next_first <= '1';
                
            when SC =>
                sena <= '1';
                swea <= "1";
                next_addra <= std_logic_vector(unsigned(pointer)-1);
                sdina <= (others => '0');
                next_pointer <= std_logic_vector(unsigned(pointer)-1);
                
            when SL =>
                if(BTNL = '1') then
                    srecord_enable <= '1';
                    if(sample_out_ready = '1') then
                        sena <= '1';
                        swea <= "1";
                        next_addra <= pointer;
                        sdina <= sample_out;
                        next_pointer <= std_logic_vector(unsigned(pointer)+1);
                    else
                        sena <= '0';
                        swea <= "0";
                        next_pointer <= pointer;
                    end if;
                else
                    srecord_enable <= '0';
                end if;
            
            when SRR =>
                next_cuenta_r <= std_logic_vector(unsigned(pointer)-3);
                if(SW0 = '1' and SW1='0') then
                    next_addra <= std_logic_vector(unsigned(pointer)-2);
                end if;
                
            when Snormal =>
                splay_enable <= '1';
                if(sample_request = '1') then
                    sena <= '1';
                    next_sample_in <= douta;
                    if(SW0='0') then
                        next_addra <= cuenta_play;
                        next_cuenta <= std_logic_vector(unsigned(cuenta_play)+1);
                    else
                        next_addra <= cuenta_play_r;
                        next_cuenta_r <= std_logic_vector(unsigned(cuenta_play_r)-1);
                    end if;
                end if;
                
            when Sfir1 =>
                if(first = '1') then
                    sena <= '1';   
                    next_sample_in_fir <= douta;
                    next_sample_in_enable_fir <= '1';
                    next_addra <= cuenta_play;
                    next_cuenta <= std_logic_vector(unsigned(cuenta_play)+1);
                    next_first <= '0';
                else
                    next_sample_in_enable_fir <= '0';
                end if;
               
           when Sfir2 =>
               splay_enable <= '1';
               if(sample_request = '1') then
                   next_sample_in <= sample_from_fir;
                   next_first <= '1';
               end if;
               
--                  lo que tengo que hacer es:
--                  1. meto la primera muestra de la ram en el filtro fir (sample_in_fir), activo sample_in_enable_fir
--                        ena <= '1';
--                        sample_in_fir <= douta;
--                        sample_in_enable_fir <= '1';
--                        saddra <= cuenta_play;
--                        next_cuenta <= std_logic_vector(unsigned(cuenta_play)+1);
                    
                    
--                        hago un cambio de estado cuando sample_out_ready_fir = '1'

                    
--                  2. cuando esté procesada (sample_out_ready_fir) activo el play_enable
--                  3. cuando haya un sample_request, meto en next_sample_in lo que ha salido del filtro, es decir, sample_out_fir
--                  en este estado hago lo siguiente:
--                        play_enable = '1';
--                            if(sample_request = '1') then
--                                next_sample_in <= sample_out_fir;
--                            end if;


--                  4. una vez se ha metido la salida del filtro en la IA, meto la siguiente muestra de la ram en el filtro fir y activo sample_in_enable_fir
--                        vuelvo al estado de antes donde activo (la condición sería que 
--                  5. cuando esté procesada (sample_out_ready_fir) activo el play_enable
--                  6. cuando haya un sample_request, meto en next_sample_in lo que ha salido del filtro, es decir, sample_out_fir

--                    En resumen, el primer estado se encarga de pasar la muestra de la ram al filtro, cuando esta señal sea procesada
--                    se cambia de estado y este estado se encarga de mandarla a la interfaz de audio.
--                    Se vuelve al estado inicial cuando first = 1
            
            when others =>
                sena <= '0';
        end case;
    end process;
            
    

    NEXT_STATE_DECODE: process (state,BTNC,BTNR,BTNL,pointer,cuenta_play,SW0,SW1,cuenta_play_r,sample_out_ready_fir,first,sample_out_fir,sample_from_fir)
    begin
        next_state <= Srep;
        next_sample_from_fir <= sample_from_fir;
        case state is
            when Srep =>
                if(BTNC = '1') then
                    next_state <= SC;
                elsif (BTNR = '1') then
                    next_state <= SRR;
                elsif (BTNL = '1') then
                    next_state <= SL;
                end if;
                
            when SC =>
                if(unsigned(pointer) <= 1) then
                    next_state <= Srep;
                else
                    next_state <= SC;
                end if;
                
            when SRR =>
                if(SW1 = '0') then
                   next_state <= Snormal;
                else
                   next_state <= Sfir1;
                end if;             
                   
            when Snormal =>
                if(SW0 = '0') then
                    if((unsigned(cuenta_play) = (unsigned(pointer)+1)) or (unsigned(pointer) = 0)) then
                        next_state <= Srep;
                    else
                        next_state <= Snormal;
                    end if;
                else
                    if((unsigned(cuenta_play_r)+3 = 0) or (unsigned(pointer) = 0)) then
                        next_state <= Srep;
                    else
                        next_state <= Snormal;
                    end if;
                end if;
                
            when Sfir1 =>
                if((unsigned(cuenta_play) = (unsigned(pointer)+1)) or (unsigned(pointer) = 0)) then
                    next_state <= Srep;
                elsif(sample_out_ready_fir = '1') then
                    next_sample_from_fir <= sample_out_fir;
                    next_state <= Sfir2;
                else
                    next_state <= Sfir1;
                end if;
                
            when Sfir2 =>
                if(first = '1') then
                    next_state <= Sfir1;
                else
                    next_state <= Sfir2;
                end if;

            when SL =>
                if(BTNL = '0' or unsigned(pointer) = 524287) then
                    next_state <= Srep;
                else
                    next_state <= SL;
                end if;
            when others =>
                next_state <= Srep;
        end case;
        
    end process;

    reloj: clk_wiz_0 port map(clk12M,reset,clk_100Mhz);
    
    clk_12Mhz <= clk12M;
    record_enable <= srecord_enable;
    ena <= sena;
    wea <= swea;
    addra <= saddra;
    dina <= sdina;
    play_enable <= splay_enable;
    sample_in <= ssample_in;
    sample_in_fir <= ssample_in_fir;
    sample_in_enable_fir <= ssample_in_enable_fir;
    filter_select <= SW0;
    
    
end Behavioral;
