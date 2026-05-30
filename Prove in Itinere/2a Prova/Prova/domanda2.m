clear;

A = [2,1,0,0,0;1,3,1,0,0;0,1,4,1,0;0,0,1,5,1;0,0,0,1,6];
B = A' + 2*eye(5);

% A)
r_B_alla_3 = max(abs(eig(B^3)));
r_B_3 = max(abs(eig(B)))^3;

r_B = max(abs(eig(B)));
r_A_piu_2 = max(abs(eig(A))) + 2;

ans_A = mat2str((abs(r_B_alla_3 - r_B_3) < 1e-9) && (abs(r_B - r_A_piu_2) < 1e-9))

% B)
r_A_meno_2 = max(abs(eig(A))) - 2;

ans_B = mat2str((abs(r_B_alla_3 - r_B_3) < 1e-9) && (abs(r_B - r_A_meno_2) < 1e-9))

% C)
d_B_8 = eig(B^8);
ans_C = mat2str(any(d_B_8 < -1e-9))

% D)
e_B4 = eig(B^4);
geom_mult = zeros(5, 1);
for i = 1:5
    geom_mult(i) = size(null(B^4 - e_B4(i)*eye(5)), 2);
end
ans_D = mat2str(any(geom_mult > 1))