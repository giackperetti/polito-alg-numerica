clear;

x = linspace(8,10,9);
A = vander(x);

[U,S,V] = svd(A);

S6 = S;
S6(7:end, 7:end) = 0;

A6 = U * S6 * V';

norm_1_A6 = norm(A6,1)