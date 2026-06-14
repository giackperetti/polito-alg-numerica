clear;

n = 12;
H = hilb(12);
A = H + 0.001*eye(n);
x_ref = (24:-2:2)';
b = A*x_ref;

x = A \ b;

N_e = norm(x_ref - x,inf)

