clear;

x = linspace(0,pi/2,30);
y = x.*sin(x);

p = polyfit(x,y,2)
