clear;

x = linspace(0,1,1000);
y = exp(-x.^2).*cos(4*x);

plot(x,y)