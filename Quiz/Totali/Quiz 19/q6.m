clear;

n = 40;
A = hilb(n);

num_A_condizione = length(A(log(A) < -3))