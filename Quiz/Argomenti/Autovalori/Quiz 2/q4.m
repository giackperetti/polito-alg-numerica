clear;

A = [2,3,4;3,4,6;1,0,3];
B = A'*A;

% A)
autovalori_B = eig(B)

% B)
[V, D] = eig(B);
ortogonale = norm(V' * V - eye(3))


% D)
B_simmetrica = mat2str(issymmetric(B))

% E)
norm_2_B = norm(B,2)