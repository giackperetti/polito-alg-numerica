clear;

tol = 1.0e-10;
z = [1;1;1];
p = 0.5;

A1 = [1,-2,0; 0,2,0; 1,1,3];
A2 = [0.5,-2,0; 0,2,0; 1,1,3];
A3 = [0,-2,0; 0,1,0; 1,1,3];

[l1, w1, m1] = potenze_inverse(A1, p, z, tol, 100);
[l2, w2, m2] = potenze_inverse(A2, p, z, tol, 100);
[l3, w3, m3] = potenze_inverse(A3, p, z, tol, 100);

l1_ref = eigs(A1,1,p);
l2_ref = eigs(A2,1,p);
l3_ref = eigs(A3,1,p);

fprintf("l1 = %d | l1_ref = %d\n", l1, l1_ref);
fprintf("l2 = %d | l2_ref = %d\n", l2, l2_ref);
fprintf("l3 = %d | l3_ref = %d\n", l3, l3_ref);

% la A2 e' singolare e quindi non si puo' usare il metodo delle pontenze
% inverse, visto che sfrutta la LU.

[V3, D3] = eig(A3)
% non converge perche' ha autovalori 0 e 1 che sono equidistanti da p=0.5
