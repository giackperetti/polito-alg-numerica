clear;
n = 7;
H = hilb(n);
A = H + 0.001*eye(n);
x_esatta = (1:n)';
b = A * x_esatta;
x_num = A \ b;
N_e = norm(x_num - x_esatta, inf)