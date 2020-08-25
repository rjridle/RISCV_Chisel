####################################################################
# Innovus Foundation Flow Code Generator, Fri Aug  7 16:17:24 CDT 2020
# Version : 17.10-p003_1
####################################################################

if {[file exists FF/vars.tcl]} {
   source FF/vars.tcl
}
foreach file $vars(config_files) {
   source $file
}

source FF/procs.tcl
ff_procs::system_info
setDistributeHost -local
setMultiCpuUsage -localCpu 1

if {$vars(restore_design)} { restoreDesign DBS/cts.enc.dat riscv }

um::enable_metrics -on
puts "<FF> Plugin -> always_source_tcl"

#-------------------------------------------------------------
set vars(step) postcts_hold
set vars(postcts_hold,start_time) [clock seconds]
um::push_snapshot_stack
#-------------------------------------------------------------

######################################################################
# Variables affecting this step:
#---------------------------------------------------------------------
# - vars(process)
######################################################################
# Additional variables for this step:
#---------------------------------------------------------------------
# - vars(power_effort) "low or high"
# - vars(delay_cells)
# - vars(fix_hold_allow_tns_degradation)
# - vars(fix_hold_ignore_ios)
######################################################################
# The active analysis views are controlled by the following variables:
#---------------------------------------------------------------------
# - vars(postcts_hold,active_setup_views)
# - vars(postcts_hold,active_hold_views)
#
######################################################################
# set_analysis_view -setup $vars(postcts_hold,active_setup_views) -hold $vars(postcts_hold,active_hold_views)
#
setDesignMode -process 250
Puts "<FF> RUNNING POST-CTS HOLD FIXING ..."
puts "<FF> Plugin -> pre_postcts_hold_tcl"
optDesign -postCTS -hold -outDir RPT -prefix postcts_hold
puts "<FF> Plugin -> post_postcts_hold_tcl"
#-------------------------------------------------------------

um::pop_snapshot_stack
create_snapshot -name postcts_hold -categories design
report_metric -file RPT/metrics.html -format html
Puts "<FF> MAILING RESULTS TO ryanridley46@gmail.com"
if {[file exists RPT/postcts_hold.summary]} {
   exec /bin/mail -s "FF: riscv, postcts_hold completed ([pwd])" < RPT/postcts_hold.summary ryanridley46@gmail.com
} elseif {[file exists RPT/postcts_hold.summary.gz]} {
   exec gunzip -c RPT/postcts_hold.summary.gz | /bin/mail \
      -s "FF: riscv, postcts_hold completed ([pwd])" ryanridley46@gmail.com
} else {
   exec /bin/mail -s "FF: riscv, postcts_hold completed ([pwd])" < /dev/null ryanridley46@gmail.com
}
saveDesign DBS/postcts_hold.enc -compress
saveNetlist DBS/LEC/postcts_hold.v.gz
if {[info exists env(VPATH)]} {exec /bin/touch $env(VPATH)/postcts_hold}
ff_procs::report_time
puts "<FF> Plugin -> final_always_source_tcl"

if {![info exists vars(single)]} {
   exit 0
}

