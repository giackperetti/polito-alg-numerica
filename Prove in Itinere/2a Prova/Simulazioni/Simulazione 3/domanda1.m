clear;

M = [
    1, -2, -17/3, 9/2, 95/42, 14/3 ;
    -2, 4, 34/3, -9, -95/21, -28/3 ;
    1, -3, -49/6, 4, 125/42, 49/6 ;
    0, 1, 5/2, 1/2, -5/7, -7/2
];

rango_M = rank(M);
fprintf('Il rango di M è: %d\n\n', rango_M);

% A)
x1 = [-191/80, 382/77, -290/77, 9/7, -11/18, 45/9];
M_x1 = [M; x1];

if rank(M_x1) == rango_M
    fprintf('Opzione 1: VERA. Il vettore x1 appartiene allo spazio riga.\n');
else
    fprintf('Opzione 1: Falsa.\n');
end

% B)
x2 = [0, 14/10, 7/2, 7/10,-10/10,-49/10];
M_x2 = [M; x2];

if rank(M_x2) == rango_M
    fprintf('Opzione 2: VERA. Il vettore x2 appartiene allo spazio riga.\n');
else
    fprintf('Opzione 2: Falsa.\n');
end

% D)
if rango_M == 4
    fprintf('Opzione 4: Potenzialmente corretta (il rango è 4).\n\n');
else
    fprintf('Opzione 4: Falsa (il rango è %d, non 4).\n\n', rango_M);
end