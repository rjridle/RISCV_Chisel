#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Jul 21 17:25:27 2020                
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
set init_layout_view {}
set init_verilog /home/rjridle/risc-v-chisel/fabcds/synth/mapped/riscv.vh
set init_mmmc_file /home/rjridle/risc-v-chisel/fabcds/par/FF/view_definition.tcl
set init_lef_file /classes/ecen4303F19/osu_soc_3.0/lib/ami05/lib/osu05_stdcells.lef
set init_top_cell riscv
set init_gnd_net VSS
set init_pwr_net VDD
init_design
um::enable_metric -on
um::push_snapshot_stack
add_tracks
setMaxRouteLayer 3
setDesignMode -process 250
floorPlan -d 4000 4000 40.05 40.6 40.05 42
globalNetConnect VSS -type pgpin -pin gnd -inst *
globalNetConnect VDD -type pgpin -pin vdd -inst *
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal3 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 14.4 bottom 14.4 left 14.4 right 14.4} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal3(3) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal3(3) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal3(3) }
timeDesign -preplace -prefix preplace -outDir RPT
checkDesign -all
check_timing
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
get_metric -id current -uuid 5e150772 name
get_metric -id current -uuid 5e150773 flow.memory.instant
get_metric -id current -uuid 5e150772 flow.memory
get_metric -id current -uuid 5e150773 flow.memory.resident.instant
get_metric -id current -uuid 5e150772 flow.memory.resident
get_metric -id current -uuid 5e150773 flow.memory.resident.peak.instant
get_metric -id current -uuid 5e150772 flow.memory.resident.peak
get_metric -id current -uuid 5e150773 flow.tool.name.short
get_metric -id current -uuid 5e150773 flow.tool.version
get_metric -id current -uuid 5e150773 metric.version.instant
um::enable_metric
saveDesign DBS/init.enc -compress
saveNetlist DBS/LEC/init.v.gz
