clear;

A = magic(3);

% (a) Calcolo il determinante
d = det(A);

% (b) Calcolo il prodotto scalare tra la 1a e la 3a riga di A
% A(1,:) e A(3,:) restituiscono vettori riga
sp = dot(A(1, :), A(3, :));

% (c) Prodotto vettoriale tra le prime due colonne di A
% A(:,1) e A(:,2) restituiscono vettori colonna
vp = cross(A(:, 1), A(:, 2));

disp("Determinante: " + d);
disp("Prodotto scalare tra la 1˚ e la 3˚ riga di A: " + sp);
disp("Prodotto vettoriale tra le prime due colonne di A:");
disp(vp);