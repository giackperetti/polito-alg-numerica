clear;

x = [0; 1; 2; 3];
y = [1; 2; 4; 8];
z = exp(x);

p = polyfit(z, y, 1)

y_pred = polyval(p, z);
norma_residuo = norm(y - y_pred, 2)