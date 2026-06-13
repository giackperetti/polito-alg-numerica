clear;

x = [0, 8, 18];
v = [44, 43, 67];

p = polyfit(x,v,1);
y_2 = polyval(p, 2)