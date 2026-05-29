clear;

v = [-0.0000; -0.4472; 0.8944];
is_v_in_KerA = false;

for k = 1:4
    A = [1, 2, k;
         3, 2, 1;
         k, 4, 2];

    dim_im = rank(A);
    dim_ker = size(A, 2) - dim_im;
    
    is_iniettiva = (dim_ker == 0);

    if norm(A * v) < 1e-4
        is_v_in_KerA = true;
    end

    fprintf("k = %d | dim(Im(A)) = %d | dim(Ker(A)) = %d | iniettiva = %s | v in ker(A) = %s\n", k, dim_im, dim_ker, mat2str(is_iniettiva), mat2str(is_v_in_KerA))
end

% risposta corretta: D