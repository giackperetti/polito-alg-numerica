clear;

n = 42;
A = 20*eye(n) + diag(4*ones(n-1,1),-1) + diag(4*ones(n-1,1),1);

X = zeros(42,3);
for jj = 1:3
    b_jj = linspace(1,jj,n)';
    X(:,jj) = A \ b_jj;
end

norm(sum(X,2),1)