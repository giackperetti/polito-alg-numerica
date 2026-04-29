clear;
format long;

n = 100;

A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii, jj) = ii * max(ii,jj);
    end
end

[L, U, P] = lu(A);

A_inv = U \ (L \ P);

norm_A_inv = norm(A_inv, inf)

A_inv_ref = inv(A);

norm_A_inv_ref = norm(A_inv_ref, inf)

err_rel_A = norm(A_inv - A_inv_ref, inf) / norm(A_inv_ref, inf)
err_ass_A = norm(A_inv - A_inv_ref, inf)

% L'errore, dell'ordine di 1e-14, è sufficientemente piccolo da poter
% essere considerato trascurabile. È infatti sufficiente una variazione
% dell'ultima cifra della mantissa in aritmetica floating point perché si
% produca uno scostamento di tale entità. Se si operasse invece su numeri
% di grandezza maggiore (per esempio nei milioni), una modifica analoga
% dell'ultima cifra della mantissa genererebbe un errore più elevato,
% dell'ordine di 1e-10. Ciò dipende dal fatto che il numero di cifre
% disponibili nella mantissa è fisso.