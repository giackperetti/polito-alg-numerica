clear;

x = linspace(0,1,10);
A = vander(x);

[U,S,V] = svd(A);

S7 = S;
S7(8:end, 8:end) = 0;

A_n = U * S7 * V';
norma_inf_An = norm(A_n, inf)