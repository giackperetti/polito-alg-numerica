clear;

n = 5;
A = hilb(n);
b = (13:13:65)';

x = A \ b;

x(2)