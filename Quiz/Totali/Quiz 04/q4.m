clear;

n = 80;
A = hilb(n);

cols = 7:7:77;
rows = 2:2:n;

B = A(rows, cols);

sum(B(:))