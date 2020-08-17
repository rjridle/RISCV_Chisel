if { [catch {set testDir [file normalize $env(testDir)]} retVar] != 0 } {
  set testDir [file normalize .]
}
set env(testDir) $testDir
set dataDir ${testDir}/design
set libDir ${testDir}/libs
 
# Add your testcase commands after loading design compatible common ui
if { [is_common_ui_mode] } {
  eval_legacy {set testDir $env(testDir)}
  eval_legacy {set dataDir ${testDir}/design}
  eval_legacy {set libDir  ${testDir}/libs}
  read_db ${dataDir}/mult_pad.enc.dat
} else {
  source ${dataDir}/mult_pad.enc
}
 
 
# exit
