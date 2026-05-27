clear;

H = hilb(10);
B1 = [0,0,2; 1,0,1; 0,1,1];
B2 = [0,1,0,1; 2,0,4,-2; -1,0,-1,0; -1,2,1,0];

[d_h, m_h] = qr_base(H, 1.0e-14, 100);

d_h_ref = sort(eig(H));
d_h_sort = sort(d_h);

n = length(d_h_sort);
abs_errors = zeros(n, 1);

for ii = 1:n
    abs_errors(ii) = abs(d_h_sort(ii) - d_h_ref(ii));
end

abs_errors
% si ha errore trascurabile rispetto all'ordine di grandezza degli
% autovalori

[d_b1, m_b1, B1_100] = qr_base(B1, -1, 100);
[d_b2, m_b2, B2_100] = qr_base(B2, -1, 1000000);

d_b1_sort = sort(d_b1)
d_b1_ref = sort(eig(B1))
B1_100
% le 100 iterazioni su B1 convergono completamente a una matrice quasi
% triangolare superiore

d_b2_sort = sort(d_b2)
d_b2_ref = sort(eig(B2))
B2_100
% ha alcuni autovalori uguali in modulo e quindi non converge


