clear;

M = magic(357);
n = length(M);
A = M + 10 * eye(n);
x = ones(n,1);

b = A*x;

[L,U,P] = lu(A);

y = L \ (P*b);
x_marcia = U \ y;

norm(b - A*x_marcia, inf)