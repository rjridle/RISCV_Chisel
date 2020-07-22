#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Jul 21 17:25:44 2020                
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
restoreDesign DBS/init.enc.dat riscv
um::enable_metric -on
um::push_snapshot_stack
setDesignMode -process 250
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_place_io_pins false
place_opt_design -out_dir RPT -prefix place
um::pop_snapshot_stack
um::set_metric -name design.power_domains -value {}
um::set_metric -name design.instances.icg -value 0
um::set_metric -name design.area.icg -value {0 um^2}
um::get_metric -pending design.instances.register
um::set_metric -name design.instances.register -value 1023
um::get_metric -pending design.area.register
um::set_metric -name design.area.register -value 883872
um::set_metric -name design.instances.power_switch -value 0
um::set_metric -name design.area.power_switch -value {0 um^2}
um::set_metric -name design.instances.iso_ls -value 0
um::set_metric -name design.area.iso_ls -value {0 um^2}
um::set_metric -name design.floorplan.image -value {boundary { data { G0.0,0.0,0.0,3999.0,4000.8,3999.0,4000.8,0.0,} fill_color {#FFFFFF} stroke_color {#002794} } ports { data { C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, } fill_color {#CA354D} stroke_color {#CA354D} } }
report_message -errors
get_metric -id current -uuid 5e150772 alerts
get_metric -id current -uuid 5e150772 flow.memory.instant
get_metric -id current -uuid 5e150772 flow.memory.resident.instant
get_metric -id current -uuid 5e150772 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150772 flow.tool.name.short
get_metric -id current -uuid 5e150772 flow.tool.version
get_metric -id current -uuid 5e150772 metric.version.instant
get_metric -id current -uuid 5e150042 flow.memory.instant
get_metric -id current -uuid 5e150042 flow.memory.resident.instant
get_metric -id current -uuid 5e150042 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150042 flow.tool.name.short
get_metric -id current -uuid 5e150042 flow.tool.version
get_metric -id current -uuid 5e150042 metric.version.instant
get_metric -id current -uuid 5e150042 name
get_metric -id current -uuid 5e150040 flow.memory.instant
get_metric -id current -uuid 5e150042 flow.memory
get_metric -id current -uuid 5e150040 flow.memory.resident.instant
get_metric -id current -uuid 5e150042 flow.memory.resident
get_metric -id current -uuid 5e150040 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150042 flow.memory.resident.peak
get_metric -id current -uuid 5e150040 flow.tool.name.short
get_metric -id current -uuid 5e150040 flow.tool.version
get_metric -id current -uuid 5e150040 metric.version.instant
get_metric -id current -uuid 5e1500a3 flow.memory.instant
get_metric -id current -uuid 5e1500a3 flow.memory.resident.instant
get_metric -id current -uuid 5e1500a3 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e1500a3 flow.tool.name.short
get_metric -id current -uuid 5e1500a3 flow.tool.version
get_metric -id current -uuid 5e1500a3 metric.version.instant
get_metric -id current -uuid 5e15005f alerts
get_metric -id current -uuid 5e1500a3 name
get_metric -id current -uuid 5e15005f flow.memory.instant
get_metric -id current -uuid 5e150040 flow.memory
get_metric -id current -uuid 5e1500a3 flow.memory
get_metric -id current -uuid 5e15005f flow.memory.resident.instant
get_metric -id current -uuid 5e150040 flow.memory.resident
get_metric -id current -uuid 5e1500a3 flow.memory.resident
get_metric -id current -uuid 5e15005f flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150040 flow.memory.resident.peak
get_metric -id current -uuid 5e1500a3 flow.memory.resident.peak
get_metric -id current -uuid 5e15005f flow.tool.name.short
get_metric -id current -uuid 5e15005f flow.tool.version
get_metric -id current -uuid 5e15005f metric.version.instant
get_metric -id current -uuid 5e1500a7 flow.memory.instant
get_metric -id current -uuid 5e1500a7 flow.memory.resident.instant
get_metric -id current -uuid 5e1500a7 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e1500a7 flow.tool.name.short
get_metric -id current -uuid 5e1500a7 flow.tool.version
get_metric -id current -uuid 5e1500a7 metric.version.instant
get_metric -id current -uuid 5e1500a6 alerts
get_metric -id current -uuid 5e1500a7 name
get_metric -id current -uuid 5e1500a6 flow.memory.instant
get_metric -id current -uuid 5e1500a7 flow.memory
get_metric -id current -uuid 5e1500a6 flow.memory.resident.instant
get_metric -id current -uuid 5e1500a7 flow.memory.resident
get_metric -id current -uuid 5e1500a6 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e1500a7 flow.memory.resident.peak
get_metric -id current -uuid 5e1500a6 flow.tool.name.short
get_metric -id current -uuid 5e1500a6 flow.tool.version
get_metric -id current -uuid 5e1500a6 metric.version.instant
get_metric -id current -uuid 5e15005d alerts
get_metric -id current -uuid 5e1500a6 name
get_metric -id current -uuid 5e15005d flow.memory.instant
get_metric -id current -uuid 5e15005f flow.memory
get_metric -id current -uuid 5e1500a6 flow.memory
get_metric -id current -uuid 5e15005d flow.memory.resident.instant
get_metric -id current -uuid 5e15005f flow.memory.resident
get_metric -id current -uuid 5e1500a6 flow.memory.resident
get_metric -id current -uuid 5e15005d flow.memory.resident.peak.instant
get_metric -id current -uuid 5e15005f flow.memory.resident.peak
get_metric -id current -uuid 5e1500a6 flow.memory.resident.peak
get_metric -id current -uuid 5e15005d flow.tool.name.short
get_metric -id current -uuid 5e15005d flow.tool.version
get_metric -id current -uuid 5e15005d metric.version.instant
get_metric -id current -uuid 5e15005d name
get_metric -id current -uuid 5e15005a flow.memory.instant
get_metric -id current -uuid 5e150772 flow.memory
get_metric -id current -uuid 5e15005d flow.memory
get_metric -id current -uuid 5e15005a flow.memory.resident.instant
get_metric -id current -uuid 5e150772 flow.memory.resident
get_metric -id current -uuid 5e15005d flow.memory.resident
get_metric -id current -uuid 5e15005a flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150772 flow.memory.resident.peak
get_metric -id current -uuid 5e15005d flow.memory.resident.peak
get_metric -id current -uuid 5e15005a flow.tool.name.short
get_metric -id current -uuid 5e15005a flow.tool.version
get_metric -id current -uuid 5e15005a metric.version.instant
um::enable_metric
saveDesign DBS/place.enc -compress
saveNetlist DBS/LEC/place.v.gz
