clear;

A = [1:6;5:10;9:14;15:20]

% colonne di A scambiate
B = A(:, end:-1:1)

% colonne pari di A
C = A(:, 2:2:end)

% righe dispari di A
D = A(1:2:end, :)

%  matrice formata dalle righe 1, 4, 3 e dalle colonne 5, 2 di A
E = A([1,4,3],[5,2])

% vettore degli elementi diagonali di A
diagonal_elements = diag(A)