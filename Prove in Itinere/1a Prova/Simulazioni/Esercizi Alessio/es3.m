clear;

A = [2,3,-1;1,-2,3];
b = [10;-3];

Ab = [A,b];

n = size(A, 2);
rA = rank(A);
rAb = rank(Ab);

if rA == rAb
    rouche_capelli = n - rA
else
    disp('nessuna');
end

% b è corretta