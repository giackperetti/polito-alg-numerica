clear;

x = linspace(-3, -2, 10000);
y = exp(-x) .* cos(x.^2);

max_y = max(y)