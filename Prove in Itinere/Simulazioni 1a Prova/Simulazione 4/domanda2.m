clear;

v = [2707/974; 1530/403; -2129/489];
w = [6900/312; 7193/9985; 257/6478];

p = (dot(v,w) / dot(w,w)) * w;
n = norm(p,2);

fprintf('La norma 2 di p è: %.4f\n', n);

if n >= 0 && n <= 0.4
    disp('La norma 2 di p è compresa tra 0 e 0.4');
elseif n >= 2.6 && n <= 3
    disp('La norma 2 di p è compresa tra 2.6 e 3');
elseif n >= 0.5 && n <= 2.5
    disp('La norma 2 di p è compresa tra 0.5 e 2.5');
elseif n >= 3.1 && n <= 5
    disp('La norma 2 di p è compresa tra 3.1 e 5');
end