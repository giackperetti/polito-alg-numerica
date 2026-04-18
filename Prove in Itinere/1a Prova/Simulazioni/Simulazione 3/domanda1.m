clear;

A = zeros(1, 4);

for ii = 1:4
    vi = [1, (tan(ii))^3 + 1, 0];
    wi = [1, (tan(ii+1))^3 - 1, 1];

    Area_i = norm(cross(vi, wi));
    A(ii) = Area_i;
    
    fprintf('A(%d) = %.4f\n', ii, Area_i);
end

massimo_A = max(A);
is_crescente = all(diff(A) > 0);
is_decrescente = all(diff(A) < 0);
tutti_maggiori_16 = all(A > 16);

fprintf('Massimo valore di A_i: %.4f\n', massimo_A);
fprintf('A_i è maggiore di 16 per ogni i? %s\n', string(tutti_maggiori_16));
fprintf('A_i è crescente? %s\n', string(is_crescente));
fprintf('A_i è decrescente? %s\n', string(is_decrescente));