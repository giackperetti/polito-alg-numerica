clear;

% Definizione della matrice N (3x4)
N = [sqrt(3), -sqrt(5), sqrt(7), 0; 
     -3, 3*sqrt(5), 3*sqrt(5), sqrt(3); 
     -4*sqrt(3), 3*sqrt(7)+sqrt(5), sqrt(7), -1];

% Estrazione della matrice dei coefficienti A (3x3)
A = N(:, 1:3);

% Calcolo dei ranghi
rA = rank(A);
rN = rank(N);

% Verifica della condizione
if rA == 3
    disp('La matrice ha rango massimo (3). Il sistema ha UN''UNICA soluzione.');
    disp('Affermazione corretta: Pi ed r si incontrano in un solo punto.');
elseif rA == 2 && rN == 2
    disp('Il sistema ha infinite soluzioni (retta contenuta nel piano).');
elseif rA == 2 && rN == 3
    disp('Il sistema non ha soluzioni (retta e piano paralleli).');
end