// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:23:15 2017
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
  (* c_thresh0_value = "1" *) 
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
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
  (* c_thresh0_value = "1" *) 
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
Zou8Ce9ei23+Sa/2uxbYEk8JR7m3I2fOYn1rP3badeAt6Dvh0foeI86Vt1a5IdxdBeMoB2NgEGeA
KrJ1tadfKTVqOCA7T5hR9Hu9M2ktEhmSKYcBCZIq/TuadO436v7iVmZC/UWUa4f2fsj7VQ2dnTb+
+E9T082y5ShF9B7crFZ0/OZi4ztssWoZhwvgs0ahGpToBVLi2K5XOZYf1lynbKVLnfUcNkR9Ywlj
5804HnhsYCxwOxsfOd1lJXXpGK6m9WMxYDB2mXj7mfJkqEKSKnttjrJrKidF1Acbn9Qmy7OeCwZG
yRAJ5jlpq33NoED/zvFr0gPHxI3DWdJS4LnBug==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ZPSAsCHuV9MaL+YSQ5tw1KxVLwrKubxvMWRb5DE6JHDn9hGtquruipoqgYI0JyS1zu6lnhALdZeo
+hgSMUrzQ7GwtPDnrTGSq7Tefhnb8iYKosXJp/eSMsdUa74gbd8KtWrnKO0S9pPv81XNU6BvrWW3
4NvFLzI/NTC5K9TOoCNY4UKe8KOXNBgSZMq0eUQhghWs5SOUGxwSHiPh/6Vep5Nvw6OpMCke2WKx
Ry1m5RMsLc5z53zYKBJe3cqFW0YuF+qt8Gzf0TVhQ6PUgWUmfp2ubwW1feVn66T5dWiz4dtMRn+A
3oMLS7jFcbLKUzX5H2G3OHqF9uhUUQ9S9mQ6pQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
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
AZ4CdmsKDA==
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
