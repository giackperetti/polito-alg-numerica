clear;

v1 = [3, 5, -1, 7, 2, 4];
v2 = [0, -3, 8, 6, -2, 1];
v3 = [1/2, 3/4, 7/5, 9/2, 4/3, 5/6];
v4 = [5, 2, -6, 8, 1, -3];

M = [v1', v2', v3', v4'];

r = rank(M);
n = size(M, 2);

if r == n
    disp('soluzione unica')
else
    rouche_capelli = n - r;
    fprintf('ci sono infinito alla %d soluzioni', rouche_capelli);
end