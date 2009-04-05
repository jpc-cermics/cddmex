
SHELL = /bin/csh

include ../Path.incl 

include $(SCIDIR)/Makefile.incl

all	:: builder.sce 
	@echo "running builder (be patient)"
	@$(SCIDIR)/bin/nsp -nw -e "exec('builder.sce');quit" -errcatch >& /dev/null; 	
	@echo "At prompt, enter:";
	@echo "-->exec loader.sce";
	@echo "----------------------------------------------------";


tests	:: all


clean	::
	cd libcdd; make clean 

distclean:: clean 
	cd libcdd; make distclean 





