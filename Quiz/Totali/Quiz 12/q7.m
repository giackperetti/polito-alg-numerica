clear;

x = linspace(0,10,1000);
y = sin(sin(log(x+2))).*cos(x);

max(y)