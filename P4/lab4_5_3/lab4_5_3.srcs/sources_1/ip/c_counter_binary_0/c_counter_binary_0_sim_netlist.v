// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 13:41:21 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fpga/LCSE_Grupo12/p5/lab4_5_3/lab4_5_3.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
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
ZI3CehWi+8PCZt0hhe/W+WM/48viZEzG9hviwj55b/K7T2iBvbNWDdCiGrZqeMvisdJjZsKYPGr/
HNF9+7+tAWSPrEF+9vFoM+SxY9iy7zTaIj3kuUnJ9roNGgb2McbJ4oRA07imo8xGqZfQxePHyMwr
APhkFmsafdT9qqRG5+kRQci2HomhCKShBJGS9tvuI1R9T3gk/Q1GqRf++PnkBbYNb26ArtEpmMFN
WblLLgNz90MJ7L9GFf6PFBFW7X7jcdMfLr1v9i8dbHVlmtG4N5MkqrF15bXQ/74W9WpTpB253HVU
opjG0ZRN9w5Be9dklhFYfWbXt4tIr13ZMs8n/w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
tsgiTaxYyx7KwFtNjdMGW7I2+XK8j29n8wwAGLmguKYNxQWjfTDBCOhGY2UcZAdPuDoPIm8B8Cbp
a8pxw1QwOv3/UhATXm3HMjmDiK3bpKDNy/VrJcIfGNFOoxnvqoQRaR6buC/v+nAmqfdtGsLTqCak
FOfttGa3/yWdjcGz4rFbfU59ZJ7K3LJCfa+D07JRmuVMXpx/9bvAja1BeRIavdEJ8h4ue0+80QrS
EWuIuBk6ODhm9rs4/5hcJPZTGQXeWZhFJWjMwmBCyNsuu8mrKCocVT0FY537ADVtRQQPSka7Isp1
/zYa2nODXRpezfkeL3eslnNkkxRhW3ek2pS6Zg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12224)
`pragma protect data_block
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
gnf/e8lnNw7yGWbUOicGxqQ1Ikrn2JPMHvM=
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
