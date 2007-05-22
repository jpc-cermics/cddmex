// LP example (see cddmex.m)
objective=[-1,1];
A1=[1,1; -1, 0; 0, -1];
B1=[1; 0; 0];
IN.obj=objective;IN.A=A1;IN.B=B1;
OUT = cddmex('solve_lp',IN);

 		
