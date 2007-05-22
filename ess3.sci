// Example 3: Find minimal V representation
//
V1=[0 0; 0 1; 1 0; 1 1; 0.2 0.8; 0.7 0.3];
V.V=V1;
// each row of V1.V is a vertex
[Vred]=cddmex('reduce_v',V);
//  Vred.V  is a minimal V representation
[Vred,ind_redvert]=cddmex('reduce_v',V);
//  ind_redvert are the indices of redundant vertices

