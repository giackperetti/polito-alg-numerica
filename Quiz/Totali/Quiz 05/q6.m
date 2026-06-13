clear;

x = linspace(4,6,8);
A = vander(x);

[U, S, V] = svd(A);

r = 5;

S5 = S;
S5(r+1:end, r+1:end) = 0;

An = U * S5 * V';

norm(An, 1)