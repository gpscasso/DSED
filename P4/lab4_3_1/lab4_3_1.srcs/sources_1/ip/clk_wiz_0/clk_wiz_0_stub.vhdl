-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Nov 15 12:16:30 2017
-- Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/fpga/LCSE_Grupo12/p5/lab4_3_1/lab4_3_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.vhdl
-- Design      : clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_0 is
  Port ( 
    clk_5MHz : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end clk_wiz_0;

architecture stub of clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_5MHz,clk_in";
begin
end;
