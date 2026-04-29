clear;

for n = 2:5
    u = [1; -2*n; 3-n];
    v = [-2*n; -2*(n+1); -3];
    w = [-n; 7; -n+5];

    vol_Tn = abs(dot(u, cross(v, w))) / 6;
    fprintf('Vol(T_%d) = %.4f\n', n, vol_Tn);
end