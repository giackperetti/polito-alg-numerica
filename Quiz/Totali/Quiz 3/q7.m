clear;

x = linspace(8, 10, 9);
A = vander(x);

[U, S, V] = svd(A);

S6 = S;
S6(7:end, 7:end) = 0;

An = U * S6 * V';

norm(An, 1)