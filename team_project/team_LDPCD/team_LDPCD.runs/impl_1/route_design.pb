
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 6b3e4e32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:53 ; elapsed = 00:02:01 . Memory (MB): peak = 1258.906 ; gain = 134.0232default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
A
,Phase 2.1 Create Timer | Checksum: 6b3e4e32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:02:01 . Memory (MB): peak = 1272.516 ; gain = 147.6332default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 6b3e4e32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:02:01 . Memory (MB): peak = 1280.172 ; gain = 155.2892default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 6b3e4e32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:02:01 . Memory (MB): peak = 1280.172 ; gain = 155.2892default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: e1e0401d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
H
3Phase 2 Router Initialization | Checksum: e1e0401d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:54 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:02 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:03 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
G
2Phase 10 Post Router Timing | Checksum: 109ea0bcc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:03 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:55 ; elapsed = 00:02:03 . Memory (MB): peak = 1290.184 ; gain = 165.3012default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
552default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:052default:default2
00:02:102default:default2
1290.1842default:default2
165.3012default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.5692default:default2
1290.1842default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2w
cD:/3grade/microprocessor/team_project/team_LDPCD/team_LDPCD.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
gD:/3grade/microprocessor/team_project/team_LDPCD/team_LDPCD.runs/impl_1/design_1_wrapper_drc_routed.rptgD:/3grade/microprocessor/team_project/team_LDPCD/team_LDPCD.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:132default:default2
00:00:102default:default2
1290.1842default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
sD:/3grade/microprocessor/team_project/team_LDPCD/team_LDPCD.runs/impl_1/design_1_wrapper_methodology_drc_routed.rptsD:/3grade/microprocessor/team_project/team_LDPCD/team_LDPCD.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
672default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 


End Record