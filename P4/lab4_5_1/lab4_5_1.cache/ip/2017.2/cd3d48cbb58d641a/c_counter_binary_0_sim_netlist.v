// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 13:18:44 2017
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
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
dwbzcOhgaD7ibn1Wa8eP8I8YdaW29APK/KpEktjoe6rvKajok+MAIV7vjFyLPGdgUX1u56V6NtXD
pCU+8tL10fQv/apDST93JH9Htzghv4aJLk3BbBLgQyZj6wfAenrdqa1JzcplehvawIfoVxIMHLJe
dxZWCQUCIdZl2N5Yw1TiCTmeRTbXcUYtKkJBjxkwXWOSoOD8HqwM6RTVyQbBGJUpdJHXHGj8vT6N
TGZ9oqLHEhzKknOUHfddS178GmTTIZbQJEPOLU/bMqHUW4lqsK7VdURcSdozbed2Bl+cw6N2zOyJ
Dxwnw3zR7Ib0ItYUSewpDNTVpRtQnBlxmErXJQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
nvPZvGny5Doh6v3fxx4ERR5te66V9kca7KtLr7iXluq380BeWZLwSSIR9RPrbY9bb0W3Jaxe+Cu5
Ij1LxhIIEuDyiRSnOQ28cjha0c15zjRoGPySK0qm2FU7qhmu89fV6mM2OCGurDdNbnrN6Jab9Bcs
0CnnwDIaZJFDATXWBiuUjvpVOfmDS0pIK8cLzrcfjm8MPsIsoWcHSD7De1rUBYIKXrR+dvoSsaMw
IMArnAp9cxVO51ZKz7fzA6ZLmoePCZiJCubvjVsW16n3JLHGIAWAEe3tdf5fCW0m7W4b4yBdMHQE
HdWR3c1yeCI8hj9PyV5qJ35rjprusx51+/LdHQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10528)
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
