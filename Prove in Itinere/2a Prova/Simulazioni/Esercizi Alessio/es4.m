clear;

% Rispetto alla base canonica C=(1, x, x^2):
pA = [1; -2; 3]; % pA(x) = 1 - 2x + 3x^2
pB = [2; -5; 1]; % pB(x) = 2 - 5x + x^2
pC = [3; -1; 2]; % pC(x) = 3 - x  + 2x^2

% A) vera se: dim(span(pA, pB, pC)) < dim(R_2[x])
dim_generato = rank([pA, pB, pC]);
opzione_A = (dim_generato < 3);

% B) vera se: dim(span(pA, pB, pC)) = 3
opzione_B = (dim_generato == 3);

% C) vera se: rk([pA, pB]) < 2
rk_pA_pB = rank([pA, pB]);
opzione_C = (rk_pA_pB == 1);

% D) vera se: rk([pA, pC, s]) > dim(span(pA, pC))
s = [4; -3; 5];
rk_pA_pC   = rank([pA, pC]);
rk_pA_pC_s = rank([pA, pC, s]);
opzione_D  = (rk_pA_pC_s > rk_pA_pC);

fprintf('A) Esiste un q che non appartiene a span(pA, pB, pC)? \n   Rango generato = %d (dimensione di R2[x] = 3) -> %s\n\n', ...
    dim_generato, mat2str(opzione_A));
fprintf('B) {pA, pB, pC} è una base di R2[x]? \n   Rango = %d -> %s\n\n', ...
    dim_generato, mat2str(opzione_B));
fprintf('C) pA e pB sono linearmente dipendenti? \n   Rango = %d -> %s\n\n', ...
    rk_pA_pB, mat2str(opzione_C));
fprintf('D) s(x) NON appartiene allo spazio generato da pA e pC? \n   Rango(pA, pC) = %d, Rango(pA, pC, s) = %d -> %s\n', ...
    rk_pA_pC, rk_pA_pC_s, mat2str(opzione_D));

% risposta corretta: B