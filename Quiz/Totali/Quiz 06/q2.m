clear;

n = 100;

A = zeros(100);
for ii = 1:n
    for jj = 1:n
        A(ii,jj) = sin(max(ii,jj));
    end
end

cond(A,1)