clear;

n = 15;
H = hilb(n);
A = H + 0.01*eye(n);
x_esatta = (-1:-2:-30)';

b = A*x_esatta;

[L,U,P] = lu(A);
y = L \ (P * b);
x_approx = U \ y;

N_e = norm(x_approx - x_esatta, inf)