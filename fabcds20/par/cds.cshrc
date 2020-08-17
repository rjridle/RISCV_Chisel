#
# OSU Cadence Setup Script
#
# Modified 10/11/16 - jstine
#

setenv CADENCE /import/comet1/CDS
#setenv CDS_LIC_FILE 5280@cadence.ceatlabs.okstate.edu
setenv CDS_LIC_FILE 5280@avatar.ecen.okstate.edu
setenv CDS_LIC_ONLY 1
setenv CDS_LOG_PATH ~/cadence/logs
setenv CDS_LOG_VERSION sequential
#setenv MGLS_LICENSE_FILE 1717@avatar.ecen.okstate.edu

# LD_LIBRARY_PATH settings - makes sure something is there
if ($?LD_LIBRARY_PATH) then
    echo "Your LD_LIBRARY_PATH is setup correctly"
else
    setenv LD_LIBRARY_PATH /usr/lib:/usr/X11R6/lib:/lib:/usr/local/lib
endif

# Set 64-bit Auto Detection
setenv CDS_AUTO_64BIT all

# Cadence Design Systems (CDS)
setenv CDSHOME          ${CADENCE}/IC_06.16
setenv INNOVUS		${CADENCE}/INNOVUS171
setenv SSV		${CADENCE}/SSV_16.12.000

# New CDS Environment Variables
setenv CDS_Netlisting_Mode Analog

# New Path Entries
set newdirs = ( \
		$CDSHOME/bin \
		$CDSHOME/tools/bin \
	  	$SSV/tools/bin \
		$INNOVUS/tools/bin \
		)

# New LD_LIBRARY_PATH Entries
set newlibs = ( \
		$INNOVUS/tools/lib64 \
		$CDSHOME/tools/lib64 \
		$SSV/tools/lib64 \
		)

# END customizable section

# Extend path
foreach dir ($newdirs)
    set present = `printenv PATH | /bin/grep $dir`
    if ($present == "") then
        set path= ( $dir $path )
    endif
    unset present
end
unset dir newdirs

# Extend LD_LIBRARY_PATH
foreach dir ($newlibs)
    set present = `printenv LD_LIBRARY_PATH | /bin/grep $dir`
    if ($present == "") then
        setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:${dir}
    endif
    unset present
end
unset dir newdirs

# Notify Users
echo "You are now set up to use CDS tools"


