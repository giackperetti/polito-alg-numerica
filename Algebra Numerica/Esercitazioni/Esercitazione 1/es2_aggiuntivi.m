clear;

n_max = 40;
x = zeros(n_max, 1);
err_rel = zeros(n_max, 1);
x_tilde = zeros(n_max, 1);
err_rel_tilde = zeros(n_max, 1);

x(1) = 2;
err_rel(1) = abs(pi - x(1)) / pi;
x_tilde(1) = 2;
err_rel_tilde(1) = abs(pi - x_tilde(1)) / pi;

for n = 2:n_max
    x(n) = 2^(n - 0.5) * sqrt(1 - sqrt(1 - 4^(1 - n) * x(n - 1)^2));
    err_rel(n) = abs(pi - x(n)) / pi;
    
    x_tilde(n) = x_tilde(n - 1) * sqrt(2 / (1 + sqrt(1 - 4^(1 - n) * x_tilde(n - 1)^2)));
    err_rel_tilde(n) = abs(pi - x_tilde(n)) / pi;
end

figure;
semilogy(1:n_max, err_rel, '--o', 'DisplayName', 'x_n (Instabile)');
hold on;
grid on;
semilogy(1:n_max, err_rel_tilde, '-s', 'DisplayName', '\tilde{x}_n (Stabile)');

xlabel('Indice iterazione (n)');
ylabel('Errore Relativo');
title('Confronto della propagazione dell''errore nel calcolo di \pi');
legend('Location', 'best');
hold off;