clear;

A = toeplitz([1, 0, 1, 0]);

M = [A; -7*A];

[Q, R] = qr(M);

R_tilde = R(1:4, 1:4);
R_lower = R(5:8, 1:4);

tol = 1e-12;
is_lower_zero = all(abs(R_lower(:)) < tol);

det_R_tilde = det(R_tilde);
is_det_zero = abs(det_R_tilde) < tol;

if is_lower_zero
    fprintf('Il blocco inferiore è la matrice nulla O_{4,4}.\n');
else
    fprintf('Il blocco inferiore NON è nullo.\n');
end

fprintf('Il determinante di R_tilde è: %e\n', det_R_tilde);
if is_det_zero
    fprintf('Quindi: det(R_tilde) = 0\n');
else
    fprintf('Quindi: det(R_tilde) != 0\n');
end