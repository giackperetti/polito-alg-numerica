clear;

x = 1e-7;
y = 4 - sqrt(16 + x^2);

y_ref = -x^2 / (4 + sqrt(16+x^2));

err_rel = abs(y_ref - y)/abs(y_ref)