clear;

M = magic(11)/45;

P = tril(M);
Q = triu(M);

A = det(P^21 * Q^6)
B = det(P^2 * P' * Q^2)
C = det(P * Q * Q' * P^(-1))
D = det(P * Q^(-1) * P')