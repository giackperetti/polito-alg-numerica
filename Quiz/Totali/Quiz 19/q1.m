clear;

n = 100;
A = hilb(n);

B = A(1:2:n, 2:2:n);

sum_B = sum(B(:))