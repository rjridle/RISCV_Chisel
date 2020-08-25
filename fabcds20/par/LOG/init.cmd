#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Aug 19 16:47:52 2020                
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
set init_layout_view {}
set init_verilog /home/rjridle/risc-v-chisel/fabcds20/synth/mapped/riscv.vh
set init_mmmc_file /home/rjridle/risc-v-chisel/fabcds20/par/FF/view_definition.tcl
set init_lef_file /home/rjridle/osugooglelib/outputs/s8_osu130.lef
set init_top_cell /home/rjridle/risc-v-chisel/fabcds20/par/riscv
set init_gnd_net VSS
set init_pwr_net VDD
init_design
