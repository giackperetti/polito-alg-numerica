clear;

M = [sqrt(2), -sqrt(3), sqrt(6), pi;
    -2, 2*sqrt(3), 2*sqrt(3), sqrt(2)*pi;
    -3*sqrt(2), 2*sqrt(6)+sqrt(3), sqrt(6), pi];
A = M(:, 1:3);
b = M(:, end);

rA = rank(A);
rM = rank(M);

if rA == rM
    if rA == 2
        disp('sta sul piano')
    elseif rA == 3
        disp('incidente')
    end
else
    disp('retta parallela al piano')
end
    



