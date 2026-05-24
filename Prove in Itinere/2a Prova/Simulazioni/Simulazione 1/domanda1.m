clear;

for k = 1:4
    A = [-3, 4, 1, 0;
          1, -16, 2, 0;
          k, -k, 1, 2;
          0, 1, 0, -1];

    d = det(A);
    r = rank(A);
    isomorfismo = (r == 4);

    fprintf('k = %d | det = %.4f | rank = %d | isomorfismo: %s\n', ...
        k, d, r, mat2str(isomorfismo));
end