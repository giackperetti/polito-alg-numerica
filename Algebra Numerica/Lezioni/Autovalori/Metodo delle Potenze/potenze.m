function [lambda_max, w, m] = potenze(A, z, tol, m_max)
% METODO delle POTENZE: Approssima l'autovalore dominante di una matrice A.
% Input:
%  A     : Matrice quadrata n x n
%  z     : Vettore iniziale (non nullo)
%  tol   : Tolleranza per l'errore relativo sulla convergenza
%  m_max : Limite superiore delle iterazioni
% Output:
%  lambda_max : Stima dell'autovalore di modulo massimo
%  w          : Autovettore corrispondente normalizzato
%  m          : Numero di iterazioni effettuate
    w = z / norm(z); % normalizzazione iniziale per prevenire overflow
    lambda = 0;

    for m = 1:m_max
        z = A * w; % iterazione del metodo: calcolo del nuovo vettore
        lambda_max = w' * z; % calcolo del quoziente di Rayleigh (con denominatore = 1)
        w = z / norm(z); % normalizzazione del vettore per l'iterazione successiva

        % controllo della convergenza basato sull'errore relativo
        if abs(lambda_max - lambda) <= tol * abs(lambda_max)
            break
        end

        lambda = lambda_max;
    end
end