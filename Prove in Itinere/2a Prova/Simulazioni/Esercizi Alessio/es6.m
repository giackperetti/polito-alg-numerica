clear;

n = 4;
tol = 1e-12;

A = [1,1,0,0;
    1,2,1,0;
    0,1,3,1;
    0,0,1,4];

B = A' + 3*eye(n);

% A)
d_B2 = eig(B^2)

% B)
raggio_B2 = max(abs(eig(B^2)));
raggio_B_2 = max(abs(eig(B)))^2;
is_raggio_B2_raggio_B_2 = mat2str(abs(raggio_B2 - raggio_B_2) < tol)

% C)
d_B = eig(B);
d_B_unici = uniquetol(d_B, tol);
for ii = 1:length(d_B_unici)
    fprintf("Base dell'autospazio per lambda = %.4f:\n", d_B_unici(ii));
    disp(null(B - d_B_unici(ii) * eye(n)))
end

% D)
d_A = eig(A)

% risposta corretta: B