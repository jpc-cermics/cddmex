//Example 1 (see cddmex.m)
A1=[1 1 1];B1=[1];
A2=[eye(3,3);-eye(3,3)];B2=[1;1;1;2;2;2];
H.A=[A1;A2];H.B=[B1;B2];H.lin=(1:size(B1,1))';
//  H.lin=indices of equality constraints
V=cddmex('extreme',H);
// The rows of V.V are the extreme points of P

