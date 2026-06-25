clear;

n = 32;
A = 16*eye(n) + diag(8*ones(n-1,1),-1) + diag(8*ones(n-1,1),1);
b = linspace(-5,1,n)';

d = eig(A);

R = chol(A);

y = R' \ b;
x = R \ y;

norm_1_soluzioni = norm(x+y, 1)