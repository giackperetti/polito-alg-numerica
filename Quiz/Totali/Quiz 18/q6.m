clear;

n = 6;
x = linspace(0,1,n);

A = vander(x);

[U,S,V] = svd(A);

S4 = S;
S(5:end, 5:end) = 0;

A4 = U * S4 * V';

norm_inf_A4 = norm(A4, "inf")