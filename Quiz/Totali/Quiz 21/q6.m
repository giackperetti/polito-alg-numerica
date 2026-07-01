clear;

n = 100;
A = hilb(n);

sum_A_condizione = sum(A(A < 0.03))