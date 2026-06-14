clear;

x = linspace(0,1,1000);
y = exp(-x.^2).*sin(x);

max_y = max(y)