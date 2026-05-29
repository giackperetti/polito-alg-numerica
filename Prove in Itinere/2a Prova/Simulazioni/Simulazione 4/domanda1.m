clear;
clc;

% Definizione della matrice M (4x6)
M = [1, -2, -17/3, 9/2, 95/42, 14/3;
     -2, 4, 34/3, -9, -95/21, -28/3;
     1, -3, -49/6, 4, 125/42, 49/6;
     0, 1, 5/2, 1/2, -5/7, -7/2];

rM = rank(M);

% A)
x1 = [0, 0, 0, 0, 0, 0];
A = mat2str(rank([M; x1]) > rM) % Restituisce true se NON appartiene

% B)
x2 = [-191/80, 382/77, -290/77, 9/7, -11/18, 45/9];
B = mat2str(rank([M; x2]) == rM)

% C)
C = mat2str(rM == 2)

% D)
x3 = [0, 14/10, 7/2, 7/10, -10/10, -49/10];
D = mat2str(rank([M; x3]) > rM) % Restituisce true se NON appartiene