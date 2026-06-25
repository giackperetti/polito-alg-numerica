clear;

x = linspace(0,10,1000);
y = sin(x).*(log(x+1)).^2;

max_y = max(y)