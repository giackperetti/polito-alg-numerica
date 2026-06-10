clear;

n = 44;
A = 12 * eye(n) + diag(4*ones(n-1,1),-1) + diag(4*ones(n-1,1),1);
b = linspace(10,12,n)';

d = eig(A)

L = chol(A, 'lower');

y = L \ b;
x = L' \ y;

risultato = norm(y + x, inf)