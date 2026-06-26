clear;

X = [1.7; 31000];
delta = [2.1e-9; 7.1e-4];
n = length(X);

err_rel = zeros(n,1);
for ii = 1:n
    y = sqrt(X(ii)+delta(ii)) - sqrt(X(ii));
    y_ref = delta(ii) / (sqrt(X(ii) + delta(ii)) + sqrt(X(ii)));

    err_rel(ii) = abs(y_ref - y)/abs(y_ref);
end

err_rel