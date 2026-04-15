clear;

function [L,U] = elleu(A)
    n = size(A,1);
    for k = 1:n-1
        for ii = k+1:n
            A(ii,k) = A(ii,k)/A(k,k);
            for jj = k+1:n
                A(ii,jj) = A(ii,jj) - A(ii,k) * A(k,jj);
            end
        end
    end

    L = tril(A,-1)+eye(n);
    U = tril(A);
end

N = 100;
A = zeros(N,N);

for ii = 1:N
    for jj = 1:N
        A(ii,jj) = max(ii,jj);
    end
end

b = sum(A,2);

[L,U] = elleu(A);

x = U \ (L\b)

x_ref = ones(N,1);

err_rel = norm(x_ref - x,inf) / norm(x_ref,inf)
