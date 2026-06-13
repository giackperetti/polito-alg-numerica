clear;

n = 12;
A = 16*eye(n) + diag(2*ones(n-1,1), 1) + diag(2*ones(n-1,1), -1);

X = zeros(n, 5);
for ii = 1:5
    b_ii = linspace(1, ii, n)';
    X(:, ii) = A \ b_ii;
end

norm(sum(X, 2), 1)