clear;

A = [1, 3*pi, 1];
B = [1, -7/2, 2];
C = [1, 1/5, 3];
D = [1, 1, 6];

v1 = B - A;
v2 = C - A;
areaABC = 0.5 * norm(cross(v1, v2));

v3 = C - A;
v4 = D - A;
areaACD = 0.5 * norm(cross(v3, v4));

AreaTotale = round(areaABC + areaACD,2)

% c è corretta