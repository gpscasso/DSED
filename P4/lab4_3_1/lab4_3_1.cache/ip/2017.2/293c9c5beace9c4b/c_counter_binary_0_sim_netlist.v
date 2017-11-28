// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:25:21 2017
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
ioiSQ6sypZngpXK9PHuNDY/BW/3MLS+SvHfRW+hAlnQii+FMXbZ7NY79fxytb9WJ2xhMvyquC/4Q
ue5fxhpKyUcF2qN//ISVotVlRLyg/8QltSFmYWPKot4U+Ktt+odaIL18uKrlzJ675KUz3ZMKcoK9
R9eppIOq2IR1/IM65pwUs6h4KRao8pE5my1cX7ErW0fykRWDI0JRbTVEfvVTOljnyDUkfHnVDr//
KK3dKLYPE0fmBwUYluJIitgcuAscdYK4IJ1y11UGWJqzZRlbtnW0AAo+T5WPfjaCn2WEhMVBlnJ9
qDOxtSqZjbIvFRGuQ7eAv8zWUvW9apaV9nUx1Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
fIdLEUiqwIqSfDAITOO/uB73E2W6EWXdQt5gg2mvcV7oaJ/e+nUGD6npA/zUHH/43yDWrNy5kA2Q
KsIIU2CWHDvctZbppW5oaFE0ytfilTl8EaksLsovv5ns4CAFPn+v8aywZmUak7bLfJrDG4O5CkGn
BjeLeir8eRvj24PB/6hArjjddZMh0Nm5TaBjfYZX7IYc654WxVxoH47QM4YDaXXSLhAzDIH8r84B
bOFnfBBQT8jcO9EpUO+P/Gb1wR+X7k02alNUVy7iTTz85ON3+3GMh2hRaqe2TuIj8CmJo+w0LrCz
m2+5ERyng3iUatINY4d4+HPCX5R569Uxcv4d5g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
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
3Mbq0hj05w==
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
