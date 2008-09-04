// This is the builder.sce
// must be run from this directory

// [1] generate Path.incl

ilib_path_incl()

// [2] the source 

chdir('src');
ok=exec('builder.sce',errcatch=%t);
chdir('../');
if ~ok then 
  printf(strcat(lasterror()));
  error('exec builder.sce failed in src');
end

