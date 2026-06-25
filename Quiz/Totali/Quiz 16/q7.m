clear;

n = 100;
A = 5*eye(n) + diag(ones(n-1,1),1) + diag(-1*ones(n-1,1),-1);

d = eig(A);

min_eig = min(abs(d))
max_eig = max(abs(d))