clear;

n = 100;
num_sistemi = 30;
A = rand(n);
x_1 = ones(n, 1);
b1 = A * x_1;

% Fattorizzazione LU
X_lu = zeros(n, num_sistemi);
X_lu(:, 1) = x_1;

tic;
[L, U, P] = lu(A);
for i = 2:num_sistemi
    b_curr = X_lu(:, i-1);
    X_lu(:, i) = U \ (L \ (P * b_curr));
end
tempo_lu = toc;

% Operatore Backslash (\)
X_bs = zeros(n, num_sistemi);
X_bs(:, 1) = x_1;

tic;
for i = 2:num_sistemi
    b_curr = X_bs(:, i-1);
    X_bs(:, i) = A \ b_curr;
end
tempo_bs = toc;

fprintf('Tempo con fattorizzazione LU: %.6f secondi\n', tempo_lu);
fprintf('Tempo con operatore backslash: %.6f secondi\n', tempo_bs);
fprintf('Rapporto tempi (Backslash / LU): %.2f\n', tempo_bs / tempo_lu);


% L'operatore \ è più inefficiente perchè ad ogni ciclo viene ricalcolata
% la fattorizzazione del sistema, cosa che viene calcolata una volta sola
% usando esplicitamente la PA=LU.