// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:27:00 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fpga/LCSE_Grupo12/p5/lab4_3_1/lab4_3_1.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_10
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

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
Itf3fl6lg2dNa3n8j4MgojM+m6PoKJ0Dp3VpaN78MBqM0GLV4pzuevlr5J/bmzV6YVWBvG1Cx+Oz
8BREctzANBakf78wG8ColjCxW49EE4c6z+Fb0IGxZMGEc6aLy41a3SqiEB+sRS66DA0F7wEww63K
tsQ3CHXxFfihPAGEVFJ0jcjp6TUbJuuE3lWRZs6YUq9eu8R5Iqnt5jrR8uXBhzFmiGasCXAQ2Jw4
XNkni6JErRNsWk76xpBXvV4SvSKq6JQadCtX4Q/Myog+4lkg32jlOILsa6v3DuKko17wixE68y2A
DXubtaK6UhjygOwd+ZF4x2huspE3zenggCqv2w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
1W+NlHEKksUx55FS9119/17lvGaimpaCa7eHWaSLYJ98bwV6AgXp1BTz3zKPO07mfL3q4TMh5aBB
arp2jkPIAPnfrMipIDfettmP11vuIKD+5Mzj1ApNij66DomNDQ7bEtahiEXLrxamppj6Ykmu7Aub
1Aem3fnnBA1hoW7fByArKB7ulluS10IGH+yjmGF6wz0KJsDdYdO7wNa0zAMn55jHexAVwKeeZYpS
MVgpGVxRDp1a+Yh5fMyM/ENcDKBgZzvZrXX5jGiXoewSNza6O8kKdMcc90+QtIccsLDnTMxcMM51
6PUw4wxK8csJMDQVnelzzMldVBzaWmBSvgoW/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5408)
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
