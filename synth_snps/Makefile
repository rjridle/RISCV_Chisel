#  
#  Oklahoma State University
#  Makefile for synthesis
# 
NAME	:= synth

default:
	@echo "Basic synthesis procedure for AFRL/OSU:"
	@echo " adapt Makefile to your liking..."
	@echo

synth:
	@echo "DC Synthesis"
	@mkdir -p reports
	@mkdir -p mapped
	dc_shell-xg-t -64bit -f scripts/$(NAME).tcl | tee $(NAME).out
	@cp mapped/*.sdc ../../outputs/
	@cp mapped/*.vh ../../outputs/

clean:
	rm -rf  alib-52 WORK mapped unmapped reports analyzed $(NAME).out
	mkdir mapped unmapped reports
	rm -f default.svf
	rm -f command.log
	rm -f filenames*.log



