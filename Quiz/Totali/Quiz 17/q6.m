clear;

n = 100;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = cos(max(ii,jj));
    end
end

cond_A_1 = cond(A,1)