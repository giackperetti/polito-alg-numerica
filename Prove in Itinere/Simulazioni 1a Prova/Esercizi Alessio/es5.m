clear;

v = [1; 1; 3];
u = [2; 0; 3];

theta = acos(dot(v, u) / (norm(v) * norm(u)))

p = (dot(v, u) / dot(u, u)) * u;
p1 = p(1)

% b è corretta