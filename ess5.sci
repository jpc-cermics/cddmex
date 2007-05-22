//Example 5  (see cddmex.m)
H.A=A1H.B=B1;
V=cddmex('extreme',H);
Vproj.V=V.V(:,1:2); // Project over the first two coordinates
Hproj=cddmex('hull',Vproj);   // Get the projection

