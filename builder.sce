// Building script for Scilab. This script should be run only if
// it is necessary to re-compile cddmex.c

// must be run from this directory 

// [1] generate Path.incl 
if exists('%nsp') then 
  ilib_path_incl()
end 

 // [3] the part devoted to shared lib generation 

ilib_name  = 'libcddmex'; 	// interface library name 

// objects files 

files = [];

// other libs needed for linking (must be shared library names)

libs  = ['./libcdd/libcdd'];				

// table of (scilab_name,interface-name or mexfile-name, type) 

table =['cddmex','cddmex','cmex'];

ldflags = "";
cflags = "";
fflags = "";

Message=["\n Enter -->exec loader.sce at Scilab prompt to load cddmex \n"];

// do not modify below 
// ----------------------------------------------

ilib_build(ilib_name,table,files,libs,ldflags = ldflags,cflags = cflags );

