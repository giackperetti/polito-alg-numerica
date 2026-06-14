clear;

n = 18;
A = 6*eye(n) + diag(3*ones(n-1,1),-1) + diag(3*ones(n-1,1),1);
b = linspace(5,8,n)';

d = eig(A)

R = chol(A);

y = R' \ b;
x = R \ y;

norm(x+y,1)