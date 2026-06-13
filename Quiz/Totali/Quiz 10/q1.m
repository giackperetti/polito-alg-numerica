clear;

n = 7;
H = hilb(n);
A = H+0.001*eye(n);
x = (1:7)';
b = A*x;

x_tilde = A \ b;

err_ass = norm(x - x_tilde,inf)