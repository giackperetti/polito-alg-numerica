clear;

x = 1e-7;
y = 2 - sqrt(4 + x^2);

y_ref = -x^2 / (2 + sqrt(4+x^2));

err_rel = abs(y_ref - y)/abs(y_ref)