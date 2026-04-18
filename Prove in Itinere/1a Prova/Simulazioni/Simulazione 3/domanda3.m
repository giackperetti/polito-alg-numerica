clear;

P = [sqrt(5),-sqrt(7),sqrt(11),-3;
    -4*sqrt(10), sqrt(224), -4*sqrt(22), 7;
    -5*sqrt(5), 4*sqrt(11)*sqrt(7), sqrt(11), 0]

% Estrazione della matrice dei coefficienti A (3x3)
A = P(:, 1:3);

% Calcolo dei ranghi
rA = rank(A);
rP = rank(P);

% Verifica della condizione
if rA == 3
    disp('La matrice ha rango massimo (3). Il sistema ha UN''UNICA soluzione.');
    disp('Affermazione corretta: Pi ed r si incontrano in un solo punto.');
elseif rA == 2 && rP == 2
    disp('Il sistema ha infinite soluzioni (retta contenuta nel piano).');
elseif rA == 2 && rP == 3
    disp('Il sistema non ha soluzioni (retta e piano paralleli).');
end