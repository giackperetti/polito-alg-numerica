clear;

n = 4;
I = eye(n);
B = [I, zeros(n, 2)];
C = [B; ones(2, n+2)];

rI = rank(I);
rB = rank(B);
rC = rank(C);
detC = det(C);

if (rC == rI + 1) && (detC == 0)
    disp('b')
elseif (rI == rC) && (detC ~= 0)
    disp('c')
elseif (rC == 0) && (rB == rI)
    disp('d')
end

% b è corretta