clear;

x = linspace(-1,1,1000);
y = exp(-x.^2).*sin(5*x);

plot(x,y)