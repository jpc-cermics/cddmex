// Building script for Scilab. This script should be run only if
// it is necessary to re-compile cddmex.c

// must be run from this directory 

chdir('libcdd');
// we need to chdir to execute a builder.
ok=exec('builder.sce',errcatch=%t);

if ~ok then 
  message('Compilation of source file failed\n");
end
chdir("..");

 // [3] the part devoted to shared lib generation 

ilib_name  = 'libcddmex'; 	// interface library name 

// objects files 

files = [];

// other libs needed for linking (must be shared library names)

libs  = ['./libcdd/libcdd'];				

// table of (scilab_name,interface-name or mexfile-name, type) 

table =['cddmex','cddmex','cmex'];

ldflags ="";
cflags = "-Ilibcdd -DMEXLIB";
fflags = "";

Message=["\n Enter -->exec loader.sce at Scilab prompt to load cddmex \n"];

// do not modify below 
// ----------------------------------------------

ilib_build(ilib_name,table,files,libs,ldflags = ldflags,cflags = cflags );

