function x = gauss_noscambi(A,b)
    n = length(b);
    %% ELIMINAZIONE di GAUSS
    for k = 1:n-1
        for i = k+1:n
            % calcolo il moltiplicatore dividendo l'elemento della riga
            % corrente con l'elemento sulla diagonale
            A (i,k) = A (i,k)/A(k,k);
            for j = k+1:n
                % modifico gli elementi sulla riga con il moltiplicatore
                A(i, j) = A(i, j) - A(i,k) * A(k, j) ;
            end
            % modifico gli elementi nei termini noti con il moltiplicatore
            b(i) = b(i)- A(i,k) * b(k);
        end
    end
    %% SOSTITUZIONE INDIETRO
    x = zeros (n,1);
    % calcolo l'ultima soluzione
    x(n) = b(n)/A(n,n);
    % itero all'indietro salendo man mano di una riga per volta
    for i = n-1:-1:1
        s = A(i,i+1:n)*x(i+1:n);
        x(i) = (b(i) - s)/ A(i,i);
    end
end