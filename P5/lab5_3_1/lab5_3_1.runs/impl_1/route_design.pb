
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
w
Command: %s
53*	vivadotcl2F
2report_drc (run_mandatory_drcs) for: router_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�

�Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2H
 "2
clk_IBUF_inst	clk_IBUF_inst2default:default2default:default2@
 "*
	IOB_X0Y58
	IOB_X0Y582default:default2default:default2R
 "<
clk_IBUF_BUFG_inst	clk_IBUF_BUFG_inst2default:default2default:default2H
 "2
BUFGCTRL_X0Y0
BUFGCTRL_X0Y02default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: eee6df05
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1273.176 ; gain = 143.9612default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.1 Fix Topology Constraints | Checksum: eee6df05
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1278.734 ; gain = 149.5202default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: eee6df05
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1278.734 ; gain = 149.5202default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 199409e39
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 144b8b97c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.383 ; gain = 157.1682default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 102ea16b5
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.527 ; gain = 157.3132default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
D
/Phase 9 Depositing Routes | Checksum: 79b754d9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.527 ; gain = 157.3132default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:37 . Memory (MB): peak = 1286.527 ; gain = 157.3132default:defaulth px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
62default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:412default:default2
00:00:392default:default2
1286.5272default:default2
157.3132default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.1132default:default2
1286.5272default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
}C:/Users/Guille/Documents/Universidad/Sexto/1er Cuatri/DSED/Entrega/DSED/P5/lab5_3_1/lab5_3_1.runs/impl_1/lab5_3_1_routed.dcp2default:defaultZ17-1381h px� 
�
Command: %s
53*	vivadotcl2t
`report_drc -file lab5_3_1_drc_routed.rpt -pb lab5_3_1_drc_routed.pb -rpx lab5_3_1_drc_routed.rpx2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�C:/Users/Guille/Documents/Universidad/Sexto/1er Cuatri/DSED/Entrega/DSED/P5/lab5_3_1/lab5_3_1.runs/impl_1/lab5_3_1_drc_routed.rpt�C:/Users/Guille/Documents/Universidad/Sexto/1er Cuatri/DSED/Entrega/DSED/P5/lab5_3_1/lab5_3_1.runs/impl_1/lab5_3_1_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
Command: %s
53*	vivadotcl2y
ereport_methodology -file lab5_3_1_methodology_drc_routed.rpt -rpx lab5_3_1_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
�C:/Users/Guille/Documents/Universidad/Sexto/1er Cuatri/DSED/Entrega/DSED/P5/lab5_3_1/lab5_3_1.runs/impl_1/lab5_3_1_methodology_drc_routed.rpt�C:/Users/Guille/Documents/Universidad/Sexto/1er Cuatri/DSED/Entrega/DSED/P5/lab5_3_1/lab5_3_1.runs/impl_1/lab5_3_1_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
Command: %s
53*	vivadotcl2�
preport_power -file lab5_3_1_power_routed.rpt -pb lab5_3_1_power_summary_routed.pb -rpx lab5_3_1_power_routed.rpx2default:defaultZ4-113h px� 
P
/No user defined clocks was found in the design!216*powerZ33-232h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
72default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px� 


End Record