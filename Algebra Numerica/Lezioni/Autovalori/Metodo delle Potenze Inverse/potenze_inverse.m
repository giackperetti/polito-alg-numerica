function [lambda_p, w, m] = potenze_inverse(A, p, z, tol, m_max)
% METODO delle POTENZE INVERSE: Approssima l'autovalore di A più vicino a p.
% Utilizza la fattorizzazione LU per ottimizzare la risoluzione dei sistemi.
% Input:
%  A        : Matrice quadrata n x n
%  p        : Valore di shift (stima iniziale dell'autovalore desiderato)
%  z        : Vettore iniziale (non nullo)
%  tol      : Tolleranza per l'errore relativo sulla convergenza
%  m_max    : Limite superiore delle iterazioni
% Output:
%  lambda_p : Stima dell'autovalore più vicino a p
%  w        : Autovettore corrispondente normalizzato
%  m        : Numero di iterazioni effettuate

    n = size(A, 1);
    w = z / norm(z); % Normalizzazione iniziale per garantire stabilità
    lambda = p;

    % Pre-fattorizzazione LU della matrice traslata (A - pI).
    % L'operazione è esterna al ciclo per ridurre la complessità computazionale.
    [L, U, P] = lu(A - p * eye(n));

    for m = 1:m_max
        % Risoluzione del sistema lineare (A - pI) * z_new = w tramite sostituzione
        y = L \ (P * w);
        z = U \ y;

        % Calcolo della stima dell'autovalore originale.
        % Poiché z = (A - pI)^-1 * w, il termine (w' * z) approssima 1 / (lambda - p).
        lambda_p = p + 1 / (w' * z);

        % Normalizzazione del vettore per l'iterazione successiva
        w = z / norm(z);

        % Controllo della convergenza basato sullo scarto relativo tra iterazioni
        if abs(lambda_p - lambda) <= tol * abs(lambda_p)
            break;
        end

        lambda = lambda_p;
    end
end