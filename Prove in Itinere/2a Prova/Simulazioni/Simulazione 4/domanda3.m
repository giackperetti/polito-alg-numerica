clear;

f = [-131, 13, -24, 49.5; 
     112, -11, -13, 19; 
     -17, -16, 11, 27.5; 
     39.5, 18, 24.5, -73];

g = [59, -24.5, 13.5, -26; 
     -54.5, -24, 25.5, 55; 
     13.5, 35.5, -221, -8; 
     -26, 55, -10, 16];

dim_R4 = 4;

% A)
G1 = g + g;
r1 = rank(G1);
G1_iniettiva = (r1 == dim_R4);
G1_suriettiva = (r1 == dim_R4);
A = mat2str(~G1_iniettiva && G1_suriettiva)

% B)
G2 = f - 2*g;
r2 = rank(G2);
G2_suriettiva = (r2 == dim_R4);
B = mat2str(~G2_suriettiva)

% C)
G3 = f + f;
r3 = rank(G3);
G3_iniettiva = (r3 == dim_R4);
C = mat2str(~G3_iniettiva)

% D)
G4 = f + g;
r4 = rank(G4);
G4_isomorfismo = (r4 == dim_R4);
D = mat2str(G4_isomorfismo)