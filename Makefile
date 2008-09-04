#/* -*- Mode: Makefile -*- */

include Path.incl

include $(SCIDIR)/Makefile.incl

all	:: 
	@echo running builder 
	@$(SCIDIR)/bin/nsp -nw -e "nsptest('builder.sce');quit" 

clean	::
	@cd src; make clean 

distclean::
	@cd src; make distclean

message:
	@echo "------------------------------------------";
	@echo "At Scilab prompt, enter:";
	@echo "-->exec loader.sce";
	@echo "------------------------------------------";



