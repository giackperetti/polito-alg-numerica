clear;

x = 1e-6;
y = 5 - sqrt(25 + x^2);

y_ref = -x^2 / (5 + sqrt(25 + x^2));

err_rel = abs(y_ref - y) / abs(y_ref)
