clear;

n = 70;
A = hilb(n);

sum_A = sum(A(A < 0.01))