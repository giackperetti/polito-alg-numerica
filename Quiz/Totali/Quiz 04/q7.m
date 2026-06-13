clear;

n = 7;
A = hilb(n);

z = ones(n,1);
w = z / norm(z);
p = 0.3;
lambda = p;

[L,U,P] = lu(A - p*eye(n));

for m = 1:4
    y = L \ (P * w);
    z = U \ y;

    lambda_p = p + (1 / (w' * z));

    w = z / norm(z);

    lambda = lambda_p;
end

lambda_ref = eigs(A,1,p);

err_rel = abs(lambda_ref - lambda) / abs(lambda_ref)


