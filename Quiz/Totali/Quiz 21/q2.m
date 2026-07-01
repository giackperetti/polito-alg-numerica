clear;

n = 8;
x = linspace(4,6,n);
A = vander(x);

[U,S,V] = svd(A);

S5 = S;
S5(6:end, 6:end) = 0;

A5 = U * S5 * V';

norm_1_A5 = norm(A5,1)