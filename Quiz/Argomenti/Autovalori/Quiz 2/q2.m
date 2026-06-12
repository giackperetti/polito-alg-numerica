clear;

n = 100;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = (1 + ii + jj)/(1 + abs(ii - jj));
    end
end

[X,D] = eigs(A,1,100);

w_norm = X / norm(X);

norm(w_norm,1)

