clear;

n = 12;
A = zeros(n);

for ii = 1:n
    for jj = 1:n
        if ii == jj
            A(ii,jj) = 2*ii;
        elseif ii < jj
            A(ii,jj) = -2/jj;
        else
            A(ii,jj) = 2/jj;
        end
    end
end

r_spettrale_A = max(abs(eig(A)))

% (e)