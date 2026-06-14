clear; clc;

n_vals = 1:16;
N = length(n_vals);

err_rel_1 = zeros(1, N);
err_rel_2 = zeros(1, N);
err_rel_3 = zeros(1, N);
err_rel_4 = zeros(1, N);

fprintf('%-5s %-12s %-15s %-15s %-15s %-15s\n', ...
    'n', 'x', 'err_rel_f1', 'err_rel_f2', 'err_rel_f3', 'err_rel_f4');
fprintf('%s\n', repmat('-', 1, 80));

for k = 1:N
    n = n_vals(k);
    x = 10^(-n);

    f_1     = (1 - cos(x)) / x^2;
    f_1_ref = 1/2 - x^2/24 + x^4/720 - x^6/40320 + x^8/3628800;
    err_rel_1(k) = abs(f_1_ref - f_1) / abs(f_1_ref);

    f_2     = (exp(x) - 1) / x;
    f_2_ref = 1 + x/2 + x^2/6 + x^3/24 + x^4/120 + x^5/720;
    err_rel_2(k) = abs(f_2_ref - f_2) / abs(f_2_ref);

    f_3     = 1 - sqrt(1 - x^2);
    f_3_ref = x^2 / (1 + sqrt(1 - x^2));
    err_rel_3(k) = abs(f_3_ref - f_3) / abs(f_3_ref);

    f_4     = ((x + 1)^2 - 1) / x;
    f_4_ref = x + 2;
    err_rel_4(k) = abs(f_4_ref - f_4) / abs(f_4_ref);

    fprintf('%-5d %-12.2e %-15.6e %-15.6e %-15.6e %-15.6e\n', ...
        n, x, err_rel_1(k), err_rel_2(k), err_rel_3(k), err_rel_4(k));
end

fprintf('\nMachine epsilon (double): %.6e\n', eps('double'));

% --- Plots ---
figure('Name', 'Relative Errors vs x = 10^{-n}');

subplot(2, 2, 1);
semilogy(n_vals, err_rel_1, 'b-o', 'LineWidth', 1.5);
hold on;
yline(eps('double'), 'r--', '\epsilon_{mach}', 'LabelHorizontalAlignment', 'left');
xlabel('n  (x = 10^{-n})'); ylabel('Relative error');
title('f_1(x) = (1 - \cos x) / x^2');
grid on;

subplot(2, 2, 2);
semilogy(n_vals, err_rel_2, 'b-o', 'LineWidth', 1.5);
hold on;
yline(eps('double'), 'r--', '\epsilon_{mach}', 'LabelHorizontalAlignment', 'left');
xlabel('n  (x = 10^{-n})'); ylabel('Relative error');
title('f_2(x) = (e^x - 1) / x');
grid on;

subplot(2, 2, 3);
semilogy(n_vals, err_rel_3, 'b-o', 'LineWidth', 1.5);
hold on;
yline(eps('double'), 'r--', '\epsilon_{mach}', 'LabelHorizontalAlignment', 'left');
xlabel('n  (x = 10^{-n})'); ylabel('Relative error');
title('f_3(x) = 1 - \sqrt{1 - x^2}');
grid on;

subplot(2, 2, 4);
semilogy(n_vals, err_rel_4, 'b-o', 'LineWidth', 1.5);
hold on;
yline(eps('double'), 'r--', '\epsilon_{mach}', 'LabelHorizontalAlignment', 'left');
xlabel('n  (x = 10^{-n})'); ylabel('Relative error');
title('f_4(x) = ((x+1)^2 - 1) / x');
grid on;

sgtitle('Errori relativi: formula naive vs. stabile');