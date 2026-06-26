clear;

x = linspace(1,5,1000)';
y = -exp(-x) .* x.^3;

min_y = min(y)