#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Jul 21 17:28:04 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
set init_io_file encounter.io
setDistributeHost -local
setMultiCpuUsage -localCpu 1
restoreDesign DBS/place.enc.dat riscv
um::enable_metric -on
um::push_snapshot_stack
setDesignMode -process 250
setAnalysisMode -cppr none
set_ccopt_mode -integration native -ccopt_modify_clock_latency true
setNanoRouteMode -routeWithLithoDriven false
create_route_type -bottom_preferred_layer 1 -name METAL1
create_route_type -top_preferred_layer 3 -name METAL3
set_ccopt_property route_type METAL1
set_ccopt_property route_type METAL3
create_ccopt_clock_tree_spec
ccopt_design -outDir RPT -prefix cts
