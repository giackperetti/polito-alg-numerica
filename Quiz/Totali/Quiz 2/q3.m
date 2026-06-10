clear;
clc;

n = 12;
H = hilb(n);
x = ones(n, 1);
b = H * x;

c = b;
c(1) = c(1) + 1e-6;

tol = 1e-13;
z = pinv(H, tol) * c;

norm(z, 2)