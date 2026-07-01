clear;

n = 42;
A = 20*eye(n) + diag(4*ones(n-1,1),1) + diag(4*ones(n-1,1),-1);
b = linspace(-1,1,n)';

d = eig(A)

R = chol(A);

y = R' \ b;
x = R \ y;

norm_inf_xy = norm(x+y,"inf")