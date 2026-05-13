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