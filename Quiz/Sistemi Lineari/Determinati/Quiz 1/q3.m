clear;
clc;

A = [2 0 1 0; 1 1 0 1; 0 -2 1 1; 2 1 0 1];
b = [3; 3; 0; 4];

m = A(2:4, 1) / A(1, 1);

A(2:4, :) = A(2:4, :) - m * A(1, :);
b(2:4) = b(2:4) - m * b(1);

disp('Matrice A dopo il primo passo:');
A
disp('Vettore b trasposto dopo il primo passo:');
b