clear;

n = 18;
A = 6*eye(n) + diag(3*ones(n-1,1),-1) + diag(3*ones(n-1,1),1);

X = zeros(18,3);
for jj = 1:3
    b_jj = linspace(0,jj,n)';
    X(:, jj) = A \ b_jj;
end

norm(sum(X,2))