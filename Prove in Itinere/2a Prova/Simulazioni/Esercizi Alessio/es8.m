clear;

A = [4, 1,  0, 2;
     1, 5, -1, 0;
     0, 2,  6, 1;
     1, 0,  2, 7];

% LU senza pivoting
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

dim_righe_A = rank(A);
dim_righe_U = rank(U);
dim_righe_L = rank(L);
righe_non_nulle_U = sum(any(abs(U) > 1e-12, 2));

A = mat2str((dim_righe_A == 4) && (dim_righe_A == righe_non_nulle_U))
B = mat2str((dim_righe_A == dim_righe_L) && (dim_righe_A < 4))
C = mat2str((dim_righe_U < dim_righe_A))
D = mat2str((dim_righe_A == dim_righe_U) && (dim_righe_A < 4))

% risposta corretta: A