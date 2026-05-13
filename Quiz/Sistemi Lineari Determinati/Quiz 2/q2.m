clear;
clc;

n = 18;

A = 6 * eye(n) + ...
    + diag(3 * ones(n-1, 1), 1) + diag(3 * ones(n-1, 1), -1);

B = zeros(n,3);

for jj = 1:3
    B(:, jj) = linspace(0,jj,n);
end

x1 = A\B(:,1);
x2 = A\B(:,2);
x3 = A\B(:,3);

x = x1 + x2 + x3;

norm_x = norm(x, 2)