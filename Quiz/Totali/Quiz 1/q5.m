clear;

x = 1e-4;
y = 7 - sqrt(49 + x^2);

y_ref = (-x^2)/(7+sqrt(49+x^2));

err_rel = abs(y_ref - y)/abs(y_ref)