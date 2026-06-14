clear;

n = 11;
H = hilb(n);
b = (1:2:21)';

x = H \ b;

x(4)