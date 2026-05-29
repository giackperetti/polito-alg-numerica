clear;

det_target = 1540;

V = [10,   4,  -1;
     138,   2,   2;
     -14, -44,  20;
     -35,  -2, -10];

K = [1; -1; 0.5; 4];

for ii = 1:4
    x = V(ii, :) * K(ii);
    
    if prod(x) == det_target
        fprintf("x = [%dk, %dk, %dk] per k = %.1f || tr(U) = %d\n", ...
            V(ii, 1), V(ii, 2), V(ii, 3), K(ii), sum(x));
        break;
    end
end

% risposta corretta: C