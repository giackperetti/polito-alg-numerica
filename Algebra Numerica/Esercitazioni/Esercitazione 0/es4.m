clear;

diagonale_principale = 5 * ones(10, 1);
diagonale_superiore = 3 * ones(9, 1);
diagonale_inferiore = -1 * ones(9, 1);

A = diag(diagonale_principale) + diag(diagonale_superiore, 1) + diag(diagonale_inferiore, -1);

A([5, 8], [6, 9]) = 2;

disp(A);