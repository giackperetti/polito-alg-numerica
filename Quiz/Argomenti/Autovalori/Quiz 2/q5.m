clear;

x = linspace(0,1,10);
A = vander(x);

[U,S,V] = svd(A);

S7 = S(1:7, 1:7);

A_n = U(:, 1:7) * S7 * V(:, 1:7)';
norma_inf_An = norm(A_n, inf)