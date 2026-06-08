clear;

A = pascal(8);
[U, S, V] = svd(A);

dist = S(6, 6) %s_{k+1}