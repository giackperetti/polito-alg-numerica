clear;

n = 10;
H = hilb(n);
A = H + .001*eye(n);
x_esatta = (-2:-2:-20)';
b = A*x_esatta;

x = A \ b;

N_e = norm(x_esatta - x,inf)