clear;

n = 432;
M = magic(n);
A = M + 10*eye(n);
x_esatta = ones(n,1);

b = A*x_esatta;

x = A \ b;

N_r = norm(b - A*x, "inf")