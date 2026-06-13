clear;
n = 42;

A = 20*eye(n) + diag(4*ones(n-1,1), -1) + diag(4*ones(n-1,1), 1);
b_sum = linspace(1, 1, n)' + linspace(1, 2, n)' + linspace(1, 3, n)';

x = A \ b_sum;

norm_1_x = norm(x,1)