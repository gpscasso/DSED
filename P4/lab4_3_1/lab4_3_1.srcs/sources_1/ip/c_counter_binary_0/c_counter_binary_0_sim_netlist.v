// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:25:21 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fpga/LCSE_Grupo12/p5/lab4_3_1/lab4_3_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
i9c/x6lsjXlNu/64NBqojE5j0464vyecRRTCV+k2BsZJsbhwXE/erJsySmKYHU6AWbhyvrtVxoZ4
Ipz+FfhYL656TXY5wqXM5471Xb3f3qxkLaOvzL3Pu+y8DmzhPeW8E68D3nC0oFyka+7QyMxk1e53
Xe4r5myi+b0a7k7C0TCx9kmVIwjahT80W/x49yoNj8rLdWzdeEcCgEb1UpXsmeU0RoGBdwIEdOAC
S8u5+5CqHDRNZjwlOSY/SKDE2zG+KG4iqgxIr9ZxqmAn/xM/UMVywU7lEWDpaI9zs8KOFNY5uWQr
YQu0/+vvylFBzllrmd0B96XntwYORiOGH/YeFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
PNrXk7HqDIdEOoLDV8hpaxuGko0Wci6Ay8lT3zY/BwSBlfGxgYz34FlP4QwX1nJo8H4fUXZ5ZRDQ
BaEektAvyj4+ZIaA9MM4wP9sYo36lyhIJxxuJlAmq7ju+YlBrC6vds/jN8sQO0ASVNVBfYvCYMKz
zBGD1OYtfCt8tCOYXaP1vI9JMEobyCh3dBnuictZ9yiPsbFIW4afvQuKrsMNGWdV+0eqeHHWxvwK
R1RnOGBxLxvQxKB7SRIhxt36sep6FfEnGJ0YagG1JIF4JfAdH6yKr+dg0n7PrJ+/YAVf49DyfPHd
6NowzNhGZ+GG+o1whZZTVxfXk6TW+qIiBbjsQg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
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
a0Hyq7HEM+WcUep8IR8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
