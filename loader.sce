libname='cddmexlib'
libtitle='cddmex: interface to cdd, algorithms for many polytope manipulations';

// macros. 
//add_lib('macros',compile=%t);
// loader for src 

exec('src/loader.sce');

printf(libtitle+' loaded\n');
//printf('execute ""fsqp_dem()"" for demonstrations\n');

// path to here 
//cddmex_path = get_current_exec_dir()



