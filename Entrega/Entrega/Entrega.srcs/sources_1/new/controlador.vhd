
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

    signal clk12M : std_logic;
    
    type state_type is (Srep,SL,SC,SRR);
    signal state, next_state : state_type;

    signal pointer, cuenta_play : STD_LOGIC_VECTOR(18 downto 0) := (others=>'0');
    signal next_pointer, next_cuenta : STD_LOGIC_VECTOR(18 downto 0) := (others=>'0');
    
    signal srecord_enable : STD_LOGIC;
    
    signal sena : STD_LOGIC;
    signal swea :  STD_LOGIC_VECTOR(0 downto 0);
    signal saddra,next_addra :  STD_LOGIC_VECTOR(18 downto 0);
    signal sdina:  STD_LOGIC_VECTOR(sample_size-1 downto 0);

    signal splay_enable : STD_LOGIC;
    signal ssample_in,next_sample_in : STD_LOGIC_VECTOR(sample_size-1 downto 0);
begin
    
    SYNC_PROC : process(reset,clk12M)
    begin
        if(reset='1') then
            pointer <= (others=>'0');
            cuenta_play <= (others=>'0');
            ssample_in <= (others=>'0');
            saddra <= (others=>'0');
            state <= Srep;
        elsif(rising_edge(clk12M)) then
            pointer <= next_pointer;
            cuenta_play <= next_cuenta;
            state <= next_state;
            ssample_in <= next_sample_in;
            saddra <= next_addra;
        end if;
    end process;
    
    
    OUTPUT_DECODE: process(clk12M,state,sample_out_ready,BTNL,sample_request, pointer, sample_out, cuenta_play, douta, ssample_in,saddra)
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
            case state is
            when SRep =>
                sena <= '0';
                swea <= "0";
                splay_enable <= '0';
                srecord_enable <= '0';
                next_cuenta <= (others=>'0');
                next_addra <= (others=>'0');
                
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
                splay_enable <= '1';
                if(sample_request = '1') then
                    sena <= '1';
                    next_addra <= cuenta_play;
                    next_sample_in <= douta;
                    next_cuenta <= std_logic_vector(unsigned(cuenta_play)+1);
                else
                    sena <= '0';
                    next_cuenta <= cuenta_play;
                end if;
            when others =>
                sena <= '0';
        end case;
    end process;
            
    

    NEXT_STATE_DECODE: process (state,BTNC,BTNR,BTNL,pointer,cuenta_play)
    begin
        next_state <= Srep;
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
                if( (unsigned(cuenta_play) = (unsigned(pointer)+1)) or (unsigned(pointer) = 0)) then
                    next_state <= Srep;
                else
                    next_state <= SRR;
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
    
end Behavioral;
