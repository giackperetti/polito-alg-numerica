clear;

X = zeros(40,1);
X(1) = 2;
err_rel = zeros(40,1);
err_rel(1) = abs(pi - X(1))/abs(pi);

for n = 2:40
    X(n) = 2^(n-1/2) * sqrt(1 - sqrt(1 - 4^(1-n)*X(n-1)^2));
    err_rel(n) = abs(pi - X(n))/abs(pi);
end

[m,i] = min(err_rel)