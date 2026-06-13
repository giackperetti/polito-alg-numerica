clear;

M = magic(765);
n = length(M);
A = M + 10*eye(n);
x_ref = ones(n,1);
b = A*x_ref;

x = A \ b;

norm(b - A*x,inf)
