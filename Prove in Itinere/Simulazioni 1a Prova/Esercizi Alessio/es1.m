clear;

n = 4;
A = zeros(n,n);

for ii = 1:n
    for jj = 1:n
        A(ii,jj) = ((ii+jj)/2) * max(ii,jj);
    end
end

B = A^3;
detAB = det(A * B)
detA = det(A);
detB = det(B);

b = -detA*detB
c = 3*detA
d = detA^4

% d è corretta