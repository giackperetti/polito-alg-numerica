clear;

n = 32;
A = 16*eye(n) + diag(4*ones(n-1,1),-1) + diag(4*ones(n-1,1),1);

X = zeros(n,4);
for jj = 1:4
    b = linspace(1,jj,32)';
    X(:, jj) = A \ b;
end

norm_1_X = norm(sum(X,2),1)