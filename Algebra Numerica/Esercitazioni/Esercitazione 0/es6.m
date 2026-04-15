clear;
clf;

n = 1000;

% f(x) = sin(x) su [-π,π]
x1 = linspace(-pi, pi, n);
y1 = sin(x1);
plot(x1, y1);
hold on;

% f(x) = e^x su [-1,1]
x2 = linspace(-1, 1, n);
y2 = exp(x2);
plot(x2, y2);

% f(x) = e^(-x^2) su [-5,5]
x3 = linspace(-5, 5, n);
y3 = exp(-x3.^2);
plot(x3, y3);

% f(x) = sin(x) / x su (0,4π]
x4 = linspace(0, 4*pi, n);
x4 = x4(2:end);
y4 = sin(x4) ./ x4;
plot(x4, y4);

% f(x) = x * sin(1/x) su (0, 2]
x5 = linspace(0, 2, n);
x5 = x5(2:end);
y5 = x5 .* sin(1 ./ x5);
plot(x5, y5);

hold off;

% Aggiunta di legenda e dettagli per rendere il grafico leggibile
grid on;
legend('sin(x)', 'e^x', 'e^{-x^2}', 'sin(x)/x', 'x sin(1/x)', ...
       'Location', 'best');
title('Rappresentazione grafica delle funzioni');
xlabel('x');
ylabel('f(x)');