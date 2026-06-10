clear;

n = 20;
A = 12 * eye(n) +  diag(4*ones(n-1, 1), 1) +  diag(4*ones(n-1, 1), -1);
b = linspace(0, 1, n)';

% se sono tutti >= 0 => s.p.d => Cholesky
d = eig(A)

L = chol(A, 'lower');

y = L \ b;
x = L' \ y;

risultato = norm(y + x, inf)