clear;

x = linspace(1,2,6);
A = vander(x);

[U,S,V] = svd(A);

S4 = S;
S(5:end, 5:end) = 0;

A4 = U * S4 * V';

norm_inf_A4 = norm(A4,inf)