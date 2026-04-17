clear;

A = [1,0;0,1;1,1];
rA = rank(A);

condA = cond(A)

for jj = 1:2
    b = [jj;1;2];
    Ab = [A, b];
    rAb = rank(Ab);

    if rA == rAb
        fprintf('compatibile per %d\n', jj)
        dim_spazio_sol = size(A,2) - rA
    else
        fprintf('incompatibile per %d\n', jj)
    end
end

% b è corretta