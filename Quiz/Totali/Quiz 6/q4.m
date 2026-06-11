clear;

n = 14;
A = hilb(n);

z = ones(n,1);
w = z / norm(z);
lambda = 0;

for m = 1:7
    z = A*w;
    lambda_max = w' * z;
    w = z / norm(z);
    lambda = lambda_max;
end

r_A_ref = max(abs(eig(A)));

err_rel = abs(r_A_ref - lambda) / abs(r_A_ref)