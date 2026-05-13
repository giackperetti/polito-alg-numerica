clear;
clc;

x = linspace(0, pi, 15)';
y = x .* cos(x);

A = [x.^2, x, ones(15, 1)];

[Q, R] = qr(A);

c = R \ (Q' * y);

y_fit = A * c;

figure;
scatter(x, y, 'r', 'filled');
hold on;
plot(x, y_fit, 'b', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('y');
legend('Dati originali', 'Parabola (Minimi Quadrati)');