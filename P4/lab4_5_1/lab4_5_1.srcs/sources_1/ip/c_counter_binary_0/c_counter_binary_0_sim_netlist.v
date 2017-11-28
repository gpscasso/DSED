// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 13:18:44 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fpga/LCSE_Grupo12/p5/lab4_5_1/lab4_5_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
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
NhWJfaE3H/V/m4fm5C74drq88nFG2Dglfea2pECaVwAxkQ1Ak7CxA6tDfdhDP3FabDppylE/45Du
EuE61uxGwWtC2fETmlRkJOR7jajv94ShUssGy0kHuT+ITfSrIuLeqPcuypPk+sTuths1QR1dhbrS
snsuyJAK5VO4xS1KolJylFKvSq46GBBO6f081ISamzq1QLb4KnxQMy+YPjRsGWHd43xSLLbsUxKL
hkHho6OvMDVn5F/Dt39KykyyDo1aELAX+dZkzwQ3Gzvxb93qhlPTMILv+KeIXtYRxoquQylaXNgX
dwrr08548kq54/iVkKUkaJ6YTssh99s2vX5ANw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ARHdRdiri/mH9CZMH79TG2tNB0HK+12hKqkP2HOXiOTUv0x33QhKykoWhTh9RqdhloZKYEpwGYIt
MdZP9QhF7rP2zt1fxY0dAHoHChVjWct0hbhaF230O+MaUXAiJ2z4YDLda7+NfjnAyqTPboMWGJU2
xKWCjFnpqVIB5ieSagcxZVOCAFnRZ6YJezE3d0K9g+Eo8r/faahF8kIOL1joCNwm7lhvXg5S4UZx
fuhP9ehJccNN+Gy2y8tQ2o2VSOHPoTngieNLCbQNevZcL7DGaa4cHy/MQB00mhiIQYokJ9pIhl9b
BV0tbyjxKIJYvQSoWdX0wk4gTSgTYlEslaPAKQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10592)
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
