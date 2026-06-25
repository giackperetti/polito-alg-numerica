clear;

n = 10;
H = hilb(n);
A = H + .001*eye(n);
x_ref = (-2:-2:-20)';

b = A*x_ref;

x = A \ b;

N_e = norm(x_ref - x,"inf")