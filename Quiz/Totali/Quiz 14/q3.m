clear;

x = linspace(-2,2,1000);
y = exp(-sin(5*x)).*x.^2 - x;

plot(x,y)