clear;

n = 32;
A = 16*eye(n) + diag(4*ones(n-1,1),1) + diag(4*ones(n-1,1),-1);

X = zeros(n,1);
for jj = 1:4
    b_jj = linspace(1,jj,n)';
    X(:, jj) = A \ b_jj;
end

norm_1_X = norm(sum(X,2),1)
