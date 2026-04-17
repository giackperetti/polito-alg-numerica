risposte = [2, -2, -1, 5];

for n = risposte
    v1 = [1,n,0];
    v2 = [0,1,n];
    v3 = [n,0,1];

    M = [v1;v2;v3];

    if det(M) == 0 % questo determinante è il prodotto misto tra i vettori
        disp(n)
    end
end

% c è corretta