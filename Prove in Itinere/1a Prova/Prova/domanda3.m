clear;

A = [1,2,3,4; -2,-3,-4,-5; 3,4,5,6; -1,-3,-1,-3];

for n = 3:6
    B = [n, 1-n; 2+n, 3-n; 4+n, 5-n; 6+n, 7-n];
    AB = A * B;
    fprintf('n=%d\n', n);
    fprintf('norm1(AB)=%.2f\n', norm(AB,1));
    fprintf('norm_inf(AB)=%.2f\n', norm(AB,inf));
    fprintf('norm1(AB^T)=%.2f\n', norm(AB',1));
    fprintf('norm_inf(AB^T)=%.2f\n\n', norm(AB',inf));
end