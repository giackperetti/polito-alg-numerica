clear;

n = 100;
A = 5*eye(n) + diag(ones(n-1,1),1) + diag(-ones(n-1,1),-1);

d = eig(A);

min_abs_lambda = min(abs(d))
max_abs_lambda = max(abs(d))