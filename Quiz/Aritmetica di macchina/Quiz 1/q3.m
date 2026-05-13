clear;
clc;

n = 1:14;
h = 10.^(-n);

L = (1 - cos(h)) ./ (h.^2);

limite_teorico = 0.5;

errori = abs(L - limite_teorico);

[min_err, idx_ottimo] = min(errori);

best_n = n(idx_ottimo)