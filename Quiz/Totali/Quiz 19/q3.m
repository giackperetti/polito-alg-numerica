clear;

n = 20;
A = 12*eye(n) + diag(4*ones(n-1,1),1) + diag(4*ones(n-1,1),-1);

X = zeros(n,4);
for jj = 1:4
    b_jj = linspace(0,jj,n)';
    X(:, jj) = A \ b_jj;
end

norm_2_X_col = norm(sum(X,2))