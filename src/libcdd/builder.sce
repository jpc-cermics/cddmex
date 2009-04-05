// builder code for libcdd library
// -------------------------------

link_name = [] ;    	// functions to be added to the call table 
			// the first entry point gives the name of the library 
			// or the library name can be given by libname= 
flag  = "c";			// ext1c is a C function 
files = ['cddcore.o' 'cddio.o' 'cddlib.o' 'cddlp.o' 'cddmp.o' 'cddproj.o' ...
	 'setoper.o'];   // objects files
libs  = [];			// other libs needed for linking 
libname='cdd';


// do not modify below 
// -------------------------------------------------------
// the next call generates files (Makelib,loader.sce) used
// for compiling and loading ext1c and performs the compilation

ilib_for_link(link_name,files,libs,flag,libname=libname);


