// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov 15 12:26:59 2017
// Host        : pc-b043a-16 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
j52Twahghz3nSndL6KzSTpneYggVzV2nvvFEVhJmn929UV+DwcMM+zACQoguSUh2vZ+LRJpuf9XK
6sMmrb/Bp2BmbJvHB8x7+rM0qZr+etuWDw5aNFMC4j5S0tNjH/f1JjGXVzhqLIOVwHwqSw2QZUJn
ZlWQxRd6UGaLuVWeNI3xz+1st97wHb7tSg/2rY3+Gom5YRkr6PvJkIBnO8fs1X8drDxY2zZzKBNu
KM82vzDS2g0FCosJu1/5puH4jC/dT+0cRdOV/RGKpQ1JiRsOR1bCUi71IeLlMd5tiCn294nqY0JW
Akyvv1wafl7C1L6M/6o3iiXcsXqlortU+beYOA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
HoeUVwT694o+Kn8NPwuM6cDkL1fIOgdNdBMVvLeGZEnjjNml7namUPDE+U2qvUXS3C4XY52ZsO5i
mP9XFGA5pjRD9E8MTSQ+LLRp6ud2HDjGq0s2tolkk558LzDZzD3Ph/BDaj+lsRLGZ9TjwUOpJ5mo
ct+ysi/NN+Y/PPdl/fpCdLxf+JPu5osSUKMFqA4MeH6uuAuTQ3MHfulNZvDYOKMPOEDF6zeG58bH
9uHC+LXqwp227m5rUyDddv5ZXYHQmG8exuNUHzzg8tyUsBvrlj4yvR5U1geAmba86C31mBzVR/9A
MgOravuE7wxglox0zi3/FqzkaYvekn+L4rnFlg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5328)
`pragma protect data_block
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
JAi/ILHdl4Mt8ayxCjwEsRHkUT3SI7RCewQJ
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
