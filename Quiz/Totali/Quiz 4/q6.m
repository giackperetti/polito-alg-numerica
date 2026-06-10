clear;

n = 10;
A = hilb(n);
b = (2:2:20)';

[L,U,P] = lu(A);

y = L \ (P*b);
x = U \ y;

x(3)