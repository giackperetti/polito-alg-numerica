clear;

B = [ 1, -2,  3; 
      4, -5,  6; 
     -7,  8,  0];

A = [ 66, -78,  27; 
     -78,  93, -36; 
      27, -36,  45];

C = [ 0,  1,  0; 
      3, -3,  2; 
      1,  0,  0];

M = {A, B, C};
nomi = {'A', 'B', 'C'};

for ii = 1:length(M)
    M_ii = M{ii};
    
    if issymmetric(M_ii)
        [R_ii, p_ii] = chol(M_ii);
        if p_ii == 0
            fprintf('La matrice %s ammette il fattore di Cholesky (è simmetrica e definita positiva).\n', nomi{ii});
        else
            fprintf('La matrice %s NON ammette il fattore di Cholesky (è simmetrica ma non definita positiva).\n', nomi{ii});
        end
    else
        fprintf('La matrice %s NON ammette il fattore di Cholesky (non è simmetrica).\n', nomi{ii});
    end
end

raggio_spettrale_B = max(abs(eig(B)))

% risposta corretta: A