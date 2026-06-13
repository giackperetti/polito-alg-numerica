clear;

n = 100;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = max(ii,jj);
    end
end

B = A' * A;

U = chol(B);

U(52,64)