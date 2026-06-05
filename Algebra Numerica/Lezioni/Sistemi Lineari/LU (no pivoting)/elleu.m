function [L,U] = elleu(A)
    n = size(A,1);
    for k = 1:n-1
        for ii = k+1:n
            % calcolo il moltiplicatore dividendo l'elemento della riga
            % corrente con l'elemento sulla diagonale
            A(ii,k) = A(ii,k)/A(k,k);
            for jj = k+1:n
                % modifico gli elementi sulla riga con il moltiplicatore
                A(ii,jj) = A(ii,jj) - A(ii,k) * A(k,jj);
            end
        end
    end

    % estraggo la L come triangolare inferiore con a_ii = 1
    L = tril(A,-1)+eye(n);
    % estraggo la rimanente sezione come U
    U = triu(A);
end