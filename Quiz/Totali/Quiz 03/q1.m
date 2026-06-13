clear;

n = 11;
H = hilb(n);
b = (1:2:21)';

[L,U,P] = lu(H);

y = L \ (P*b);
x = U \ y;

x(4)
