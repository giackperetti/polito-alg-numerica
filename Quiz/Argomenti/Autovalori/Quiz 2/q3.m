clear;

n = 12;
A = hilb(n);

for m = 1:8
    [Q,R] = qr(A);
    A = R*Q;
end

A(3,3)