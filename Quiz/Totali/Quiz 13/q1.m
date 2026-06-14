clear;

n = 100;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = sin(min(ii,jj));
    end
end

k_A_inf = cond(A,"inf")