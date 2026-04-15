clear;

A = [1,9,14,21;
    -4/7,-36/7,-8,-12];
b = [-7,3];

A_b = [A, b'];

rk_A = rank(A);
rk_A_b = rank(A_b);
n = size(A_b,2);

if rk_A == rk_A_b
    if rk_A == n
            disp('soluzione unica');
    else
        rouche_capelli = n - r;
        fprintf('ci sono infinito alla %d soluzioni', rouche_capelli);
    end
else
    disp('incompatibile')
end

