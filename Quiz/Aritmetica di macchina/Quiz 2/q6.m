clear;

x = 1e-8;
y = sqrt((exp(x)- 1)/x);

y_ref = sqrt(1 + x/2);

err_rel = abs((y - y_ref) / y_ref)