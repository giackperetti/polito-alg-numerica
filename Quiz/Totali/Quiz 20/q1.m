clear;

n = 100;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = sin(1/min(ii,jj));
    end
end

cond_A_inf = cond(A,"inf")