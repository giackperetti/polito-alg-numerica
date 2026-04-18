% 1. Definizione dei vettori riga
v1 = [7, 3, 2, 6, 8, -4, 5, 9, 0];
v2 = [1, -5, 6, 7, -2, 3, 4, -1, 8];
v3 = [4/5, 9/7, 1/3, 2/6, 5, 8/3, 7/2, 6/5, 10/9];
v4 = [2, 4, -3, 7, 5, 9, -1, 6, 8];
v5 = [3, -2, 1, 8, -4, 7, 6, 5, 9];
v6 = [1, 8, -6, 4, 9, 2, 7, -3, 5];

% 2. Costruzione della matrice M (9x6) usando i vettori come colonne
M = [v1', v2', v3', v4', v5', v6'];

% 3. Calcolo del rango e del numero di incognite
r = rank(M);
n = size(M, 2); % Numero di colonne (6)

% 4. Analisi delle soluzioni
if r == n
    fprintf('Il rango e %d. Il sistema ammette UN''UNICA soluzione (quella banale x=0).\n', r);
else
    dim_null = n - r;
    fprintf('Il rango e %d. Il sistema ammette INFINITE soluzioni.\n', r);
    fprintf('La dimensione dello spazio delle soluzioni e: %d\n', dim_null);
end