clear;
clc;

n_max = 40;
x = zeros(n_max, 1);
rel_err = zeros(n_max, 1);

x(1) = 2;
rel_err(1) = abs(x(1) - pi) / pi;

for n = 2:n_max
    arg = 1 - 4^(1-n) * x(n-1)^2;
    x(n) = 2^(n-0.5) * sqrt(1 - sqrt(max(0, arg)));
    rel_err(n) = abs(x(n) - pi) / pi;
end

[min_errore, idx_ottimo] = min(rel_err)