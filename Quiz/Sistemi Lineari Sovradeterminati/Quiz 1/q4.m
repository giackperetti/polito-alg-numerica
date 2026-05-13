clear;
clc;

n = 20;
B = magic(n) + eye(n);

A = B(:, 1:10);

x_es = ones(10, 1);
b = A * x_es;

[Q, R] = qr(A);
x_QR = R \ (Q' * b);

x_BS = A \ b;

e_QR = norm(x_QR - x_es) / norm(x_es)
e_BS = norm(x_BS - x_es) / norm(x_es)