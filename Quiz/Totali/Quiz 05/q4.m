clear;

n = 60;
A = hilb(n);

count = 0;

size(A(exp(A) < 1.02))