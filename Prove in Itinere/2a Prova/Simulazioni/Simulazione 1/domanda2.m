clear;

for k = 1:4
    d = [k, -k^2, 3*k, -2*k, 2*k];
    p = prod(d);
    fprintf('k = %d | d_%d = [%g, %g, %g, %g, %g] | prod = %g | valido: %s\n', ...
        k, k, d(1), d(2), d(3), d(4), d(5), p, mat2str(p == 768));
end