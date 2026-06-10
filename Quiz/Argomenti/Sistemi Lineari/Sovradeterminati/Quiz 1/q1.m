clear;
clc;

x = [0;1;2];
y = [1;2;4];

A = [x, ones(3,1)];

[Q,R] = qr(A);

c = R \ (Q' * y)