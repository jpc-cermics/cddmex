//Example 2 (see cddmex.m)
A1=[-1,0;0,-1; 1,0; 0 1; 1 1];B1=[0;0;1;1;1];
H1.A=A1;H1.B=B1;
[Hred]=cddmex('reduce_h',H1);
//  Hred.A * x <= Hred.B  is a minimal H representation
[Hred,ind_redrows]=cddmex('reduce_h',H1);
//      ind_redrows are the indices of redundant rows

