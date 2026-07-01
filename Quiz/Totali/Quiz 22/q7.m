clear;

n = 80;
A = hilb(n);

B = A(2:2:n, 7:7:n);

sum_B = sum(B(:))