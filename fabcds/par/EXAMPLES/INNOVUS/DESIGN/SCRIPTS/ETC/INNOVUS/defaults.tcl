###############################################################################
# Define option defaults and initialize undefined variables
###############################################################################
set flow_defaults(fff_info_level) 0
set flow_defaults(debug) 0
set flow_defaults(freeze_vars) false
#set flow_defaults(novus) false
set flow_defaults(parent) edi
set flow_defaults(abutted_design) false 
set flow_defaults(hier_flow_type) 1pass 
set flow_defaults(netlist_type) verilog
set flow_defaults(ilm_list) ""      
set flow_defaults(codegen) false
set flow_defaults(capture_metrics) true
set flow_defaults(report_run_time) true
set flow_defaults(report_system_info) true
set flow_defaults(enable_qor_check) false
set flow_defaults(batch) true
set flow_defaults(rc) false
set flow_defaults(verbose) false
set flow_defaults(run_lec) true
set flow_defaults(skip_cts) false
set flow_defaults(enable_celtic_steps) false
set flow_defaults(skip_signoff_checks) false
set flow_defaults(run_clp) true
#set flow_defaults(dbs_format) oa
set flow_defaults(high_timing_effort) false
set flow_defaults(flow_effort) standard
#set flow_defaults(flow_effort) none
set flow_defaults(power_effort) none
set flow_defaults(generate_tracks) true
set flow_defaults(add_tracks) true
set flow_defaults(generate_flow_steps) false
set flow_defaults(enable_rcp) false
set flow_defaults(enable_pam) false
set flow_defaults(enable_aocv) false
set flow_defaults(enable_socv) false
set flow_defaults(enable_ocv) pre_cts
set flow_defaults(enable_cppr) none
set flow_defaults(enable_ss) false
set flow_defaults(enable_si_aware) true
set flow_defaults(enable_pac) false
set flow_defaults(enable_flexilm) false
set flow_defaults(enable_nrgr) false
set flow_defaults(enable_signoff_eco) false
set flow_defaults(black_box) true
set flow_defaults(pac_scratch_dir) "PAC_SCRATCH"
set flow_defaults(eco_dir) "ECO"
set flow_defaults(budget_mode) giga_opt
set flow_defaults(use_proto_net_delay_model) false
set flow_defaults(use_flexmodels) false
set flow_defaults(flexmodel_as_ptn) true
set flow_defaults(flexmodel_art_based) true
set flow_defaults(create_flexfiller_blockage) false
set flow_defaults(flexmodel_prototype) false
set flow_defaults(flexmodel_prototype_flow_style) "top_to_bottom"
set flow_defaults(flexmodel_prototype_congestion_aware) false
set flow_defaults(flexmodel_prototype_timing_aware) false
set flow_defaults(flexmodel_prototype_user_contraints) "user_constraints.txt"
#   set flow_defaults(clock_eco) none
#   set flow_defaults(clock_gate_clone) false
set flow_defaults(metalfill) false
set flow_defaults(cpf_timing) false
set flow_defaults(cpf_keep_rows) false
set flow_defaults(cpf_power_domain) false
set flow_defaults(cpf_power_switch) false
set flow_defaults(cpf_isolation) false
set flow_defaults(cpf_state_retention) false
set flow_defaults(cpf_level_shifter) false
set flow_defaults(ieee1801_timing) false
set flow_defaults(ieee1801_keep_rows) false
set flow_defaults(ieee1801_power_domain) false
set flow_defaults(ieee1801_power_switch) false
set flow_defaults(ieee1801_isolation) false
set flow_defaults(ieee1801_state_retention) false
set flow_defaults(ieee1801_level_shifter) false
set flow_defaults(insert_feedthrough) true
set flow_defaults(report_power) false
#set flow_defaults(in_place_opt) false
#set flow_defaults(no_pre_place_opt) false
set flow_defaults(place_opt_design) true
set flow_defaults(place_io_pins) false
set flow_defaults(placement_based_ptn) false
set flow_defaults(update_io_latency) true
set flow_defaults(route_clock_nets) true
set flow_defaults(track_opt) false
set flow_defaults(cts_engine) ccopt
set flow_defaults(ccopt_effort) low
set flow_defaults(skip_cts) false
set flow_defaults(fix_hold) "postcts postroute postroute_si"
set flow_defaults(fix_hold_ignore_ios) false
set flow_defaults(preroute_opt_design) false
set flow_defaults(postcts_setup_hold) false
set flow_defaults(route_opt_design) false
set flow_defaults(postroute_setup_hold) true
#set flow_defaults(postroute_spread_wires) false
set flow_defaults(verify_litho) false
set flow_defaults(fix_litho) false
#set flow_defaults(postroute_extraction_effort) low
set flow_defaults(signoff_extraction_effort) high
set flow_defaults(hosts) 1
set flow_defaults(threads) 1
set flow_defaults(local_cpus) 1
set flow_defaults(remote_hosts) 0
set flow_defaults(cpus_per_remote_host) 1
set flow_defaults(backup_data) 0
set flow_defaults(save_constraints) 0
set flow_defaults(user_comments) 0
set flow_defaults(place,time_design,skip) true
set flow_defaults(cts,time_design,skip) true
set flow_defaults(route,time_design,skip) true
set flow_defaults(route,check_place,skip) true
set flow_defaults(make_tool) encounter
set flow_defaults(make_tool_args) "-64 -nowin"
set flow_defaults(make_syn_tool) genus
set flow_defaults(make_syn_tool_args) "-64"
set flow_defaults(make_browser) netscape
