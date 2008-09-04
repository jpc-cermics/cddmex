// This is the builder.sce 
// must be run from this directory 

// [1] generate Path.incl 
if exists('%nsp') then 
  ilib_path_incl()
end 

// [3] the part devoted to shared lib generation 

ilib_name  = 'cdd' 		// interface library name 

// objects files (but do not give mexfiles here)

files = ['cddcore.o' 'cddio.o' 'cddlib.o' 'cddlp.o' 'cddmp.o' 'cddproj.o' 'setoper.o'];   // objects files


// other libs needed for linking (must be shared library names)

libs =[];

// table of (scilab_name,interface-name or mexfile-name, type) 

table = [];


ldflags =""
cflags = ""

// do not modify below 
// ----------------------------------------------

//ilib_build(ilib_name,table,files,libs,ldflags = ldflags,cflags = cflags );
ilib_for_link(ilib_name,files,libs,ldflags = ldflags,cflags = cflags);

printf("\n   Don''t run loader.sce!  \n");


