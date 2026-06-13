clear;
n = 12;
A = 16*eye(n) + diag(2*ones(n-1,1),1) + diag(2*ones(n-1,1),-1);
X = zeros(n,5);

for jj = 1:5
    b_jj = linspace(1, jj, n)';
    X(:, jj) = A \ b_jj; 
end

risultato = norm(sum(X,2), 1)