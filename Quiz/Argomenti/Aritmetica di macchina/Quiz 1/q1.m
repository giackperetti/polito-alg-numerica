clear;
clc;

a = 100.347123721;
base = 10;
k = 8; % cifre della mantissa

p = floor(log10(abs(a))) + 1;
m = a / (base^p);

m_arrotondata = round(m * base^k) / base^k;

fprintf('Numero originale: %.11f\n', a);
fprintf('Esponente (p): %d\n', p);
fprintf('Mantissa arrotondata: %.8f\n', m_arrotondata);
fprintf('Rappresentazione finale: %.8f * 10^%d\n', m_arrotondata, p);