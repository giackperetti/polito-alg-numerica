clear;

n = 357;
M = magic(n);
A = M + 10*eye(n);
x_ref = ones(n,1);

b = A*x_ref;

x = A \ b;

N_r = norm(b - A*x, "inf")
