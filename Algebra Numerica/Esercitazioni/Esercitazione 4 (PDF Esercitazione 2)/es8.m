clear;
clc;

A = [3, 1, 2, 4;
    -1, 0, 7, 9;
    0, 1, 2, 4;
    2, 4, 1, 1];

[L,U] = elleu(A);
[L_parz,U_parz,P] = lu(A);

m32 = L(3,2);

m32_parz = L_parz(3,2);

sol = strip(rats(m32 * m32_parz))

% La risposta corretta è la b)

