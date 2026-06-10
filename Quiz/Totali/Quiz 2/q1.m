clear;

A = [1  1  1  1; 
     1 -1 -1  1; 
     0  1  0  1; 
     1  1  1  0];

z = ones(4, 1);

for m = 1:3
    z = A * z;
    z = z / norm(z, 2); 
end

x_1 = z;
norm_1_x1 = norm(x_1, 1)