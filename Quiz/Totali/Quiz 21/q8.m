clear;

n = 5;
H = hilb(n);
b = (13*(1:5))';

x = H \ b;

x(2)