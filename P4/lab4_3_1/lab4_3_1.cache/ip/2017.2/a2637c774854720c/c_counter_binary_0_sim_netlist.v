// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:21:41 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* c_thresh0_value = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "10" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* c_thresh0_value = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
T13Z61NX5gp5g4mKEkfJnYjeyFjVyZz25tGb89KXDyGwexDi6kEOcVG5xsElypntF/QCik2b3soQ
RmruPCi8DZJ55tOoXt83Icl2j4CUuwuBUlcAa/M+tBkHeuzhfH9fg8jLR9PHiJGrNGW2Mg2iKRWP
N+cN7SQtjs2oMH0M5uRiHTpRU3Xe58z+hwrLPyT5woJ0VQSCHjeucHqV3qFO9Bh58KEa5v/QTiMg
gtfXtZ/t/4xpgPA1uajdfP4ocDjH09JCjOQSQLD0Ebkb8yVra03QlP7ipSizuMLLoimZqVFHRMtd
/CFTOkQLTy4qpNzrqULg2MKMT3lp1h90LDM8Hg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Ggm7Ow3RQA9QDoyI0QI3sySTw0sqnonMFKAmzKMV4N+plC1k+LynPw3TwrvL2jZwxqX05pGxTjMU
2UE8hExZFOc1TBcoo5PfdZ7+B/yB3mXo0etOvuAIwaAEv4U8aXBJRCGC33RoX1w0g7hGSJ5fn9FQ
iXduyVmQM1/pezP1ikD2d8FqULcd2NHi3HHMpqbCni4BFcw+HmWsMZiyaxg2HooRgqenmqxEsKRY
LNJuabtLl3gXAUZ7QbN5G4ZcZa3ojX4QTwXjjNpVnapR+HMAeJM8iqt7n3ewu3PxpHUyQo+j57Fk
qM8vMtJuzVG93ryLyMqm3ZohEktbPcI4/yG8Bg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4896)
`pragma protect data_block
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
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
