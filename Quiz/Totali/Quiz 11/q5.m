clear;

n = 44;
A = 12*eye(n) + diag(4*ones(n-1,1),1) + diag(4*ones(n-1,1),-1);
b = linspace(10,12,n)';

d = eig(A)

R = chol(A);

y = R' \ b;
x = R \ y;

norm(x + y,inf)