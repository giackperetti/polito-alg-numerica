clear;

x = 1e-6;
y = 1 - sqrt(1 + x^2);

y_ref = -x^2 / (1 + sqrt(1+x^2));

err_rel = abs(y_ref - y)/abs(y_ref)