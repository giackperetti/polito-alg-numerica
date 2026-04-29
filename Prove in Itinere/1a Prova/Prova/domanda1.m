clear;

n = 8;
A = zeros(n);
for i = 1:n
    for j = 1:n
        A(i,j) = i^2 - max(2*i*j, 4*j);
    end
end
b = [-7;-4;-3;0;5;12;21;32];

rA = rank(A);
rAb = rank([A, b]);

if rA == rAb
    dim_spazio_soluzioni = n - rA
else
    disp('incompatibile')
end

c = cond(A, "inf")