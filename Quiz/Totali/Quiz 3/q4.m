clear;

n = 10;
A = hilb(n);
p = 2;

z = ones(n, 1);
w = z / norm(z);

M = A - p * eye(n);
[L, U, P] = lu(M);

for k = 1:4
    y = L \ (P * w);
    z = U \ y;

    lambda = p + 1 / (w' * z);
    
    w = z / norm(z);
end

lambda_ref = eigs(A, 1, p);

err_rel = abs(lambda_ref - lambda) / abs(lambda_ref)