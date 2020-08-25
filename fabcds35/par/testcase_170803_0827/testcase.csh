#!/bin/csh -f

##########################################################
# CREATED    : 08/02/2017 14:32:14 by jstine (mult_pad)
# INNOVUS  : 17.10-p006_1 (Linux)
##########################################################

# Set testDir to the testcase installation directory \
setenv testDir `which $0 | sed 's/\(.*\)\/\(.*\)/\1/'`

# Start innovus \
innovus    -overwrite  -files ${testDir}/testcase.tcl

# End csh script \
exit
