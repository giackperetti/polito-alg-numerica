clear;

% se A = LU allora il determinante è det(A) = det(L)det(U) = 1 det(U) che
% dovrà essere = 8748

for k = 1:4
    d_k = [k, -k^2, 3*k, -2*k, 2*k];
    p = prod(d_k);
    fprintf('k = %d | d_%d = [%g, %g, %g, %g, %g] | prod = %g | valido: %s\n', ...
        k, k, d_k(1), d_k(2), d_k(3), d_k(4), d_k(5), p, mat2str(p == 8748));
end