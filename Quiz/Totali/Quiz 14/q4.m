clear;

x = linspace(0,1,10);
A = vander(x);

[U,S,V] = svd(A);

S7 = S;
S7(8:end, 8:end) = 0;

S7

A7 = U * S7 * V';

norm_inf_A7 = norm(A7,inf)