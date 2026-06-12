clear;

n = 16;
A = 5*eye(n) + diag(7*ones(n-1,1),1) + diag(-7*ones(n-1,1),-1);
b = linspace(0,1,n)';

[U,S,V] = svd(A);

y = S \ (U' * b);   % Sy = U'b
x = V * y;

norm(x) + norm(y)