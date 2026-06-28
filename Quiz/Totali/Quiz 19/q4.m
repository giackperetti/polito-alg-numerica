clear;

n = 14;
A = hilb(14);

z = ones(n,1);
w = z / norm(z);
lambda = 0;

for m = 1:7
    z = A*w;
    lambda_max = w' * z;
    w = z / norm(z);
    lambda = lambda_max;
end

lambda_ref = max(abs(eig(A)));

err_rel = abs(lambda_ref - lambda)/abs(lambda_ref)