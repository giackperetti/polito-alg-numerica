clear;
L_ref = 1/2;

err_ass_vector = zeros(14,1);

for n = 1:14
    h = 10^(-n);
    L = (1 - cos(h)) / h^2;
    err_ass_vector(n) = abs(L_ref - L);
end

[~, n_min] = min(err_ass_vector)