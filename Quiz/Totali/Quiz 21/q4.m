clear;

n = 150;
A = hilb(n);

B = A(2:2:n, 5:5:n);

sum_B = sum(B(:))