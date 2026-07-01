clear;

x = linspace(0,1,1000);
y = x.*exp(-cos(5*x))-1;

max_y = max(y)