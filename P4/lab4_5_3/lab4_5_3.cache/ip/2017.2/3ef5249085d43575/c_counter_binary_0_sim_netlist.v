// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 13:41:20 2017
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
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
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
OMuhAFqEIDJP0xdMiWI6RjtlV4+Iejn0Ueify41Co19vXzbUpp/RgrWWmTx/n9IaxVrx2JsjdfwW
VTad5WGg3A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GYQX2mGHh7zxAw4+XH9l7QfbFrflPBxdHW+OnKQiXFp0+28ZkGWHlpF+rFs6t1H14Jbn8YD9XAJ6
kpH0/Er3X/miL4kGOQYQF/ZNuZ+keJDSTsqLqHoc6nGS8vJObzXX7H7RDUBDAb4onG+KpQHI5gYO
8HTx4haBrxIMGXHLTc8=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CVZj2XmJb5KhF7Oi/o3kx2pVB9sNhzj2nZftrtERaP5pQQsaoUJNUwYboJOMfqcAGrBzTHIa6+tH
EtFw65bRtXeQm8YIH1h1JeDvBkyy1uRmVc5JMclUUUL11ZlKKgKAaaejugb6LjRpL5uts3z2DXAt
Th1TBr8ZS+4XvKTT1g8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZIdW+sFnmQLg5LFAczPAXPe07PLb6V8ihc+tUcKPcVKc1BeSLy/IH+Fa/nL4eSdE5TtFt5DcxZF5
6AsKp0qxmQZr2bRyPVNe+tcBsprw2keIOjnbZ0J98nHiOSVvYLIvdok5/0z3eXhxNSafXY4FQfMP
52p/2pTNpsot5sHB2pj5AOagCHPA43vFdUG0kBMymKHvcsa1i0b5hHZ+Y6vIyWm85EDY/g2evmtc
b6mj9bITsP3iur5Xi7QPBHsNUgvW/72OetP0JNDX4KZEM7EYu/hTtbMxTCAbB+flltw82T74wsUx
bRgIDMceqr9n0HvofFqefU9t/LhY5OphGwLBew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sZD8C54fUjXkYBw37pXq4tpZgU2xqw3R8W6ujH/6dmGDDu5tNFdgB9xWa4z7QGBveo+Jr85HsJrP
Uiw3BD24o86KOiWJZgBhUXn4hki7cCd6HcPhleTEoIBISTRgVkHArmio0mtxCKorwFbpBdz/TsFR
7MfWkuvak6bEedhLloGhFhUVVW5xuM5lLr10MpLT00hOXcmXcGngDITtOdQmwOck88t7nE7RMnIV
QfaUd1i56Ff9xkp57BgYwJVQh7gdX+J4yE3Y1DyWxMyo8wE9FaKN5FA/NO+Yq4rG3CSKaSeUi7gp
PnibvUYxxRo7CqnF7sJzpXa55kXNd84F4WZjyQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jLAwV8S8Tbspc1wazwKotE71H2eMwGRdf7q0P1KcQaq6dTBOkhzmWS3pHK6ssM/xMtbx8PzWtfIU
2pBoU2ihe+EPqYbCkhSwd2gamf/zau/IAmCjefZjGXvQfnoZHr7ysnHyrSTkvc77FyKKpDUCT+oX
CEE+xUqJ4G3vPpmF4DK3uLEz6ysVZNEP7dQhc/Xi/98ALAM6PcXboXMitr3XMsr0ZgtTrs8zaiN7
gdzMQnl0xWdJftuxrmXgCO+HBvzTjFQk92QWsebbPUZQUQ6OxzXtnD9OQrowbKD2s/D15Xmv2S5R
KUiAL4DmXvIjrgqodVVx9bQWDc9hlVDsAinCjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
V0tY60q7NWifm/95Q1Gu/MYvO4LUpAdK8/FeFq7SHAVCSAxxryAwnQxAZejpVoh6VWAdT3avxVHY
8d9enh+ZFSzaX42Z4i0jEYkqnQlmtAGh8eZ7hU3yl1lKUmJjkkKLp4niVnwBLY3x2USl8kW1z9aU
jFD4TKVqQDjfAl7VwrC2oyjagwt4cQfqBFlA44hxEdQSGwMkYKIWQjlBtTvtHNM2H9kWgX9V1/dM
ESIWevDMdkABryaPwcKdIp2e2YaYnSa/BvZceryiWqgAk0WJZNZwumMrAp/X9PTOLvyeHyXntCjl
q+6MdE+JXPTv2pBQa3Ww6BGlfPsnHMERdheAdw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Os0lfqXdTVmSEDvI9xLuSMWynN0u9vkSu6wl9OLzzF4Mdb03XbcCA8SI1mWMnJXXznNwUQcXP4f5
8Xjv7AF4POOYwMuQdagv7rlIWkETyet3oWeoSFDSvGG6ouPyw8Ik3Vd2Hv/qyEunlNOG8t42JL3V
Xo+EtTnw+pDG0RxuCMJWhBb8IdxmtMKmbHm20qNqc7u8rK1LHJaoEb1EFUsnz31TnBJ3dbTsLFLO
sgaiTT/ET6LxiWrKb8s/4RaHxacaA0nodGSLa4vLq0YvC2cT0fHyyOong8tpKxzAOU9ZHpqOET6S
ibwUI/Rp5n96ebwWiC1ic18IxD7RwQqJ5c2iug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12192)
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
