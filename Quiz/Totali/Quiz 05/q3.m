clear;

n = 7;
H = hilb(n);
b = (-3:3)';

[L,U,P] = lu(H);

y = L \ (P*b);
x = U \ y;

x(1)