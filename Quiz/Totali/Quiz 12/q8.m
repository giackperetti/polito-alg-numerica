clear;

A = magic(3);
b = (1:3)';

[~,R] = qr(A);

x = R \ b