clear;

tol = 1.0e-10;
z = [1;2;3];

A1 = [1,2,0;1,0,0;0,1,0];
A2 = [0.1,3.8,0;1,0,0;0,1,0];
A3 = [0,-1,0;1,0,0;0,1,0];

[l1, w1, m1] = potenze(A1,z,tol,100);
[l2, w2, m2] = potenze(A2,z,tol,1000);
[l3, w3, m3] = potenze(A3,z,tol,100);

l1_ref = max(abs(eig(A1)));
l2_ref = max(abs(eig(A2)));
l3_ref = max(abs(eig(A3)));

fprintf("l1 = %d | l1_ref = %d\n", l1, l1_ref);
fprintf("l2 = %d | l2_ref = %d\n", l2, l2_ref);
fprintf("l3 = %d | l3_ref = %d\n", l3, l3_ref);

% verifico perche' il 3˚ valore non corrisponde
[V, D] = eig(A3)
% A3 ha autovalori complessi e coniugati quindi il metodo non converge

% A2 ha bisogno di molte iterazioni per venire correttamente
[V2, D2] = eig(A2)
% questo perche' A2 ha autovalori vicini in modulo e quinid la convergenza
% e' piu' lenta
