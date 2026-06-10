clear;

M = magic(432);
n = size(M,2);
A = M + 10*eye(n);
x = ones(n,1);

b = A*x;

[L,U,P] = lu(A);
y = L \ (P * b);
x_approx = U \ y;

N_r = norm(b - A*x_approx, inf)