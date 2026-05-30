clear;

y = [1; 0; 1; 1];
for k = 1:4
    A = [k, 1, 0, 2;
        0, k-1, 1, 0;
        1, 0, k-2, 1;
        0, 1, 1, k];
    rk_f_k = rank(A);
    appartiene_y = mat2str(rank([A, y]) == rank(A));

    fprintf("k = %d | rank(f_k) = %d | appartiene y = %s\n", k, rk_f_k, appartiene_y)
end