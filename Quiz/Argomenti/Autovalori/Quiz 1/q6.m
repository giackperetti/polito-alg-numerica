clear;

n = 18;
A = 6*eye(n) + diag(3*ones(n-1, 1), +1) + diag(-3*ones(n-1, 1), -1);
b = linspace(0, 1, n)';

[U, S, V] = svd(A);

y = S \ (U' * b);   % Sy = U'b
x = V * y;          % V^T x = y  =>  x = V y

result = norm(x) + norm(y)