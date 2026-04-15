clear;
clf;

n = 10000;

x = linspace(0.1, 100, n);

a = 100 * (1 - 0.01*x.^2).^2;
b = 0.02 * x.^2;
c = (1-x.^2).^2;
d = 0.1 * x.^2;
y = sqrt((a + b) ./ (c + d));

plot(x,y);
loglog(x,y);

% FINISCIMI