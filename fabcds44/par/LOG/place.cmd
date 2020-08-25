#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Aug  7 15:53:33 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.15-s075_1 (64bit) 07/02/2020 18:24 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.15-s075_1 NR200630-1046/19_15-UB (database version 18.20, 510.7.1) {superthreading v1.53}
#@(#)CDS: AAE 19.15-s016 (64bit) 07/02/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.15-s034_1 () Jul  2 2020 10:12:29 ( )
#@(#)CDS: SYNTECH 19.15-s013_1 () Jul  1 2020 08:44:53 ( )
#@(#)CDS: CPE v19.15-s065
#@(#)CDS: IQuantus/TQuantus 19.1.3-s260 (64bit) Thu May 28 10:57:28 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
set init_io_file encounter.io
setDistributeHost -local
setMultiCpuUsage -localCpu 1
restoreDesign DBS/init.enc.dat riscv
um::push_snapshot_stack
setDesignMode -process 250
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_place_io_pins false
place_opt_design -out_dir RPT -prefix place
um::pop_snapshot_stack
getOptMode -multiBitFlopOpt -quiet
um::get_metric_definition -name *.drc
um::get_metric_definition -name *.drc.layer:*
um::get_metric_definition -name *.drc.layer:*.type:*
um::get_metric_definition -name *.drc.type:*
um::get_metric_definition -name check.drc
um::get_metric_definition -name check.drc.antenna
um::get_metric_definition -name check.place.*
um::get_metric_definition -name clock.area.buffer
um::get_metric_definition -name clock.area.clkgate
um::get_metric_definition -name clock.area.inverter
um::get_metric_definition -name clock.area.logic
um::get_metric_definition -name clock.area.nonicg
um::get_metric_definition -name clock.area.total
um::get_metric_definition -name clock.area_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.area_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.area_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.area_distribution.logic.base_cell:*
um::get_metric_definition -name clock.area_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.buffer_depth_constraint.skew_group:*.*
um::get_metric_definition -name clock.capacitance.gate.leaf
um::get_metric_definition -name clock.capacitance.gate.top
um::get_metric_definition -name clock.capacitance.gate.trunk
um::get_metric_definition -name clock.capacitance.sink.*
um::get_metric_definition -name clock.capacitance.total.leaf
um::get_metric_definition -name clock.capacitance.total.top
um::get_metric_definition -name clock.capacitance.total.trunk
um::get_metric_definition -name clock.capacitance.wire.leaf
um::get_metric_definition -name clock.capacitance.wire.top
um::get_metric_definition -name clock.capacitance.wire.trunk
um::get_metric_definition -name clock.drv.nets.capacitance.*
um::get_metric_definition -name clock.drv.nets.capacitance.count
um::get_metric_definition -name clock.drv.nets.capacitance.max
um::get_metric_definition -name clock.drv.nets.fanout.*
um::get_metric_definition -name clock.drv.nets.fanout.count
um::get_metric_definition -name clock.drv.nets.fanout.max
um::get_metric_definition -name clock.drv.nets.length.*
um::get_metric_definition -name clock.drv.nets.length.count
um::get_metric_definition -name clock.drv.nets.length.max
um::get_metric_definition -name clock.drv.nets.remaining
um::get_metric_definition -name clock.drv.nets.resistance.*
um::get_metric_definition -name clock.drv.nets.resistance.count
um::get_metric_definition -name clock.drv.nets.resistance.max
um::get_metric_definition -name clock.drv.nets.unfixable
um::get_metric_definition -name clock.halo.clock_tree:*.count
um::get_metric_definition -name clock.halo.clock_tree:*.violations
um::get_metric_definition -name clock.instances.buffer
um::get_metric_definition -name clock.instances.buffer.creator.*
um::get_metric_definition -name clock.instances.clkgate
um::get_metric_definition -name clock.instances.inverter
um::get_metric_definition -name clock.instances.inverter.creator.*
um::get_metric_definition -name clock.instances.logic
um::get_metric_definition -name clock.instances.nonicg
um::get_metric_definition -name clock.instances.total
um::get_metric_definition -name clock.instances_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.instances_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.instances_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.instances_distribution.logic.base_cell:*
um::get_metric_definition -name clock.instances_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.latency.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.early.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.late.*
um::get_metric_definition -name clock.nets.length.leaf
um::get_metric_definition -name clock.nets.length.top
um::get_metric_definition -name clock.nets.length.total
um::get_metric_definition -name clock.nets.length.trunk
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.wire
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.wire
um::get_metric_definition -name clock.stage_depth_constraint.*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.early.clock_tree:*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.late.clock_tree:*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.max
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.primary_half_corner.leaf.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.top.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.trunk.*
um::get_metric_definition -name design.area
um::get_metric_definition -name design.area.always_on
um::get_metric_definition -name design.area.blackbox
um::get_metric_definition -name design.area.buffer
um::get_metric_definition -name design.area.combinatorial
um::get_metric_definition -name design.area.hinst:*
um::get_metric_definition -name design.area.icg
um::get_metric_definition -name design.area.inverter
um::get_metric_definition -name design.area.io
um::get_metric_definition -name design.area.isolation
um::get_metric_definition -name design.area.latch
um::get_metric_definition -name design.area.level_shifter
um::get_metric_definition -name design.area.logical
um::get_metric_definition -name design.area.macro
um::get_metric_definition -name design.area.physical
um::get_metric_definition -name design.area.power_switch
um::get_metric_definition -name design.area.register
um::get_metric_definition -name design.area.std_cell
um::get_metric_definition -name design.area.vth:*
um::get_metric_definition -name design.area.vth:*.ratio
um::get_metric_definition -name design.blockages.place.area
um::get_metric_definition -name design.blockages.route.area
um::get_metric_definition -name design.blockages.route.area.layer:*
um::get_metric_definition -name design.congestion.hotspot.max
um::get_metric_definition -name design.congestion.hotspot.total
um::get_metric_definition -name design.density
um::get_metric_definition -name design.floorplan.image
um::get_metric_definition -name design.instances
um::get_metric_definition -name design.instances.always_on
um::get_metric_definition -name design.instances.blackbox
um::get_metric_definition -name design.instances.buffer
um::get_metric_definition -name design.instances.combinatorial
um::get_metric_definition -name design.instances.hinst:*
um::get_metric_definition -name design.instances.icg
um::get_metric_definition -name design.instances.inverter
um::get_metric_definition -name design.instances.io
um::get_metric_definition -name design.instances.isolation
um::get_metric_definition -name design.instances.latch
um::get_metric_definition -name design.instances.level_shifter
um::get_metric_definition -name design.instances.logical
um::get_metric_definition -name design.instances.macro
um::get_metric_definition -name design.instances.physical
um::get_metric_definition -name design.instances.power_switch
um::get_metric_definition -name design.instances.register
um::get_metric_definition -name design.instances.std_cell
um::get_metric_definition -name design.instances.vth:*
um::get_metric_definition -name design.instances.vth:*.ratio
um::get_metric_definition -name design.multibit.*
um::get_metric_definition -name design.name
um::get_metric_definition -name design.route.drc.image
um::get_metric_definition -name flow.cputime
um::get_metric_definition -name flow.cputime.total
um::get_metric_definition -name flow.last_child_snapshot
um::get_metric_definition -name flow.log
um::get_metric_definition -name flow.machine
um::get_metric_definition -name flow.machine.cpu.frequency
um::get_metric_definition -name flow.machine.cpu.model
um::get_metric_definition -name flow.machine.cpu.number
um::get_metric_definition -name flow.machine.hostname
um::get_metric_definition -name flow.machine.memory.free
um::get_metric_definition -name flow.machine.memory.total
um::get_metric_definition -name flow.machine.os
um::get_metric_definition -name flow.machine.swap.free
um::get_metric_definition -name flow.machine.swap.total
um::get_metric_definition -name flow.memory
um::get_metric_definition -name flow.memory.resident
um::get_metric_definition -name flow.memory.resident.peak
um::get_metric_definition -name flow.realtime
um::get_metric_definition -name flow.realtime.total
um::get_metric_definition -name flow.root_config
um::get_metric_definition -name flow.run_directory
um::get_metric_definition -name flow.run_tag
um::get_metric_definition -name flow.step.tcl
um::get_metric_definition -name flow.template.feature_enabled
um::get_metric_definition -name flow.template.type
um::get_metric_definition -name flow.tool_list
um::get_metric_definition -name flow.user
um::get_metric_definition -name messages
um::get_metric_definition -name power
um::get_metric_definition -name power.clock
um::get_metric_definition -name power.hinst:*
um::get_metric_definition -name power.internal
um::get_metric_definition -name power.internal.hinst:*
um::get_metric_definition -name power.internal.type:*
um::get_metric_definition -name power.leakage
um::get_metric_definition -name power.leakage.hinst:*
um::get_metric_definition -name power.leakage.type:*
um::get_metric_definition -name power.switching
um::get_metric_definition -name power.switching.hinst:*
um::get_metric_definition -name power.switching.type:*
um::get_metric_definition -name route.drc
um::get_metric_definition -name route.drc.antenna
um::get_metric_definition -name route.drc.layer:*
um::get_metric_definition -name route.map.*
um::get_metric_definition -name route.overflow
um::get_metric_definition -name route.overflow.horizontal
um::get_metric_definition -name route.overflow.layer:*
um::get_metric_definition -name route.overflow.vertical
um::get_metric_definition -name route.shielding.*
um::get_metric_definition -name route.via
um::get_metric_definition -name route.via.layer:*
um::get_metric_definition -name route.via.multicut
um::get_metric_definition -name route.via.multicut.layer:*
um::get_metric_definition -name route.via.multicut.percentage
um::get_metric_definition -name route.via.singlecut
um::get_metric_definition -name route.via.singlecut.layer:*
um::get_metric_definition -name route.via.singlecut.percentage
um::get_metric_definition -name route.via.total
um::get_metric_definition -name route.wirelength
um::get_metric_definition -name timing.drv.max_cap.total
um::get_metric_definition -name timing.drv.max_cap.worst
um::get_metric_definition -name timing.drv.max_fanout.total
um::get_metric_definition -name timing.drv.max_fanout.worst
um::get_metric_definition -name timing.drv.max_length.total
um::get_metric_definition -name timing.drv.max_length.worst
um::get_metric_definition -name timing.drv.max_tran.total
um::get_metric_definition -name timing.drv.max_tran.worst
um::get_metric_definition -name timing.hold.feps
um::get_metric_definition -name timing.hold.feps.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:*
um::get_metric_definition -name timing.hold.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:reg2reg
um::get_metric_definition -name timing.hold.histogram
um::get_metric_definition -name timing.hold.histogram.views
um::get_metric_definition -name timing.hold.pba.histogram
um::get_metric_definition -name timing.hold.pba.histogram.views
um::get_metric_definition -name timing.hold.tns
um::get_metric_definition -name timing.hold.tns.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:*
um::get_metric_definition -name timing.hold.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:reg2reg
um::get_metric_definition -name timing.hold.wns
um::get_metric_definition -name timing.hold.wns.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:*
um::get_metric_definition -name timing.hold.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:reg2reg
um::get_metric_definition -name timing.setup.feps
um::get_metric_definition -name timing.setup.feps.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:*
um::get_metric_definition -name timing.setup.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:reg2reg
um::get_metric_definition -name timing.setup.histogram
um::get_metric_definition -name timing.setup.histogram.views
um::get_metric_definition -name timing.setup.pba.histogram
um::get_metric_definition -name timing.setup.pba.histogram.views
um::get_metric_definition -name timing.setup.tns
um::get_metric_definition -name timing.setup.tns.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:*
um::get_metric_definition -name timing.setup.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:reg2reg
um::get_metric_definition -name timing.setup.type
um::get_metric_definition -name timing.setup.wns
um::get_metric_definition -name timing.setup.wns.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:*
um::get_metric_definition -name timing.setup.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:reg2reg
um::get_metric_definition -name timing.si.glitches
um::get_metric_definition -name timing.si.noise
um::get_metric_definition -name transition.*
um::get_metric_definition -name transition.count
um::get_metric_definition -name transition.max
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.Routing.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.eGRPC.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.Routing.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.Implementation.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.eGRPC.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.Construction.area.total
get_metric -raw -id current -uuid 71676e70-c0cf-43c5-b42f-4c7d8a95ba69 clock.Implementation.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.Routing.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.PostConditioning.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.eGRPC.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.Routing.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.Implementation.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.eGRPC.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.Construction.area.total
get_metric -raw -id current -uuid f4366984-96c1-41ae-95a7-4a0b14465835 clock.Implementation.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.Routing.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.eGRPC.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.Routing.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.Implementation.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.eGRPC.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.Construction.area.total
get_metric -raw -id current -uuid 5ae6875a-c6a3-4de0-b16c-c5e8bc576ad5 clock.Implementation.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.Routing.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.eGRPC.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.Routing.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.Implementation.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.eGRPC.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.Construction.area.total
get_metric -raw -id current -uuid 8c65dda2-4dfb-4583-b953-26b29f66bab8 clock.Implementation.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.Routing.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.eGRPC.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.Routing.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.Implementation.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.eGRPC.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.Construction.area.total
get_metric -raw -id current -uuid 032b98bc-d53d-4415-9cdc-04fdbd6436a4 clock.Implementation.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.Routing.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.PostConditioning.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.eGRPC.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.Routing.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.Implementation.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.eGRPC.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.Construction.area.total
get_metric -raw -id current -uuid 4a6e9ab0-9797-46b5-96fe-289efcb4cf2e clock.Implementation.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.Routing.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.PostConditioning.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.eGRPC.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.Routing.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.Implementation.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.eGRPC.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.Construction.area.total
get_metric -raw -id current -uuid f5d1b602-941f-41c8-a1b4-a855c31f9595 clock.Implementation.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.Routing.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.PostConditioning.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.eGRPC.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.Routing.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.Implementation.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.eGRPC.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.Construction.area.total
get_metric -raw -id current -uuid d7178cb2-9047-4665-8020-a4c61c3611e1 clock.Implementation.area.total
saveDesign DBS/place.enc -compress
saveNetlist DBS/LEC/place.v.gz
