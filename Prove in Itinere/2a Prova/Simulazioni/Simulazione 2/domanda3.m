clear;

v1 = [2; -1; 0; 3; 1];
v2 = [4; 0; 1; 7; 2];
v3 = [1; -2; 3; 1; -1];

w1 = v1 - v3;
w2 = 3*v1 + v2;
w3 = v2 + 2*v3;
w4 = 5*v1 - 4*v2 + v3;

% Dimensione di V
dim_V = rank([w1,w2,w3,w4])

% 1) w1..w4 linearmente indipendenti? => rank deve essere 4
lin_ind_w = rank([w1,w2,w3,w4])  % se < 4, no

% 2) {w2,w4} base di V? => rank deve essere uguale a dim_V
rank_w2_w4 = rank([w2,w4])

% 3) v1,v2,v3 NON generano V? => rank([v1,v2,v3]) < dim_V
rank_v123 = rank([v1,v2,v3])

% 4) {w1,w2,w3} base di V? => rank deve essere uguale a dim_V
rank_w1_w2_w3 = rank([w1,w2,w3])