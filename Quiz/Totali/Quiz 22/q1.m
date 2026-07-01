clear;

x = 1e-6;
y = sqrt((exp(x)-1)/x);

y_ref = sqrt(1 + (x/2));

err_rel = abs(y_ref - y)/abs(y_ref)