clear;

x = 1e-5;
y = 3 - sqrt(9 + x^2);

y_ref = -x^2 / (3 + sqrt(9+x^2));

err_rel = abs(y_ref - y)/abs(y_ref)