global testDir
global dataDir
global libDir
create_library_set -name libs_tt\
   -timing\
    [list ${libDir}/mmmc/osu05_stdcells.lib]
create_rc_corner -name rc_typ\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name corner_tt\
   -library_set libs_tt\
   -rc_corner rc_typ
create_constraint_mode -name setup_func_mode\
   -sdc_files\
    [list ${dataDir}/mult_pad.enc.dat/mmmc/modes/setup_func_mode/setup_func_mode.sdc]
create_analysis_view -name hold_func -constraint_mode setup_func_mode -delay_corner corner_tt
create_analysis_view -name setup_func -constraint_mode setup_func_mode -delay_corner corner_tt
set_analysis_view -setup [list hold_func] -hold [list setup_func]
