clear;

n = 50;
A = hilb(n);

B = A(1:2:n, 3:3:48);

sum_B = sum(B(:))