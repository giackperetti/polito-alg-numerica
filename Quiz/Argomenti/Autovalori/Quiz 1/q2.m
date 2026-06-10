clear;

n = 6;
A = pascal(n);
p = 2;
lambda_ref = eigs(A,1,p);

% potenze inverse
z = ones(6,1);
w = z / norm(z);
lambda = p;
[L, U, P] = lu(A - p * eye(n));
for m = 1:4
    y = L \ (P * w);
    z = U \ y;

    lambda_p = p + 1 / (w' * z);

    w = z / norm(z);
    if abs(lambda_p - lambda) <= 1e-10 * abs(lambda_p)
        break;
    end

    lambda = lambda_p;
end

err_abs = abs(lambda_ref - lambda)