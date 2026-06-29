clear;

n = 7;
H = hilb(n);
A = H + 0.001*eye(n);
x_ref = (1:7)';
b = A * x_ref;

x = A \ b;

N_e = norm(x_ref - x, "inf")