clear;

n = 5;
A = zeros(n);
for ii = 1:n
    for jj = 1:n
        A(ii,jj) = 2*ii*jj - 3*(ii+jj);
    end
end

[V, D] = eig(A);
d = diag(D);

% A)
d_unici = uniquetol(d, 1e-12);
for ii = 1:length(d_unici)
    fprintf("Base dell'autospazio per lambda = %.4f:\n", d_unici(ii));
    disp(null(A - d_unici(ii) * eye(n)))
end

% B)
is_V_invertibile = abs(det(V)) > 1e-12;
AV_VD = norm(A * V - V * D) < 1e-12;
is_diagonalizzabile = mat2str(is_V_invertibile && AV_VD)

% C) e D)
V
D

% risposta corretta: A