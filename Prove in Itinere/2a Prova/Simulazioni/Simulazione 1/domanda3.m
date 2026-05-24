clear;

v1 = [1; 2; -1; 0; 3];
v2 = [0; 3; 1; -1; 5];
v3 = [-2; 1; 0; 2; -1];

w1 = v1 + 2*v3;
w2 = 2*v1 - v2;
w3 = 3*v2 + 4*v3;
w4 = -v1 + 5*v2 + v3;

W = [w1'; w2'; w3'; w4'];

dimV = rank(W)

fprintf('rank(W)             = %d --> lin. indipendenti: %s\n', dimV, mat2str(dimV==4));
fprintf('rank([w2,w4])       = %d --> {w2,w4} base di V: %s\n', rank([w2,w4]), mat2str(rank([w2,w4])==dimV));
fprintf('rank([v1,v2,v3])    = %d --> v1,v2,v3 non generano V: %s\n', rank([v1,v2,v3]), mat2str(~rank([v1,v2,v3])==dimV));
fprintf('rank([w1,w2,w3])    = %d --> {w1,w2,w3} base di V: %s\n', rank([w1,w2,w3]), mat2str(rank([w1,w2,w3])==dimV));