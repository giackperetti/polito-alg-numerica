clear;

M = [1,-1,2,3;2,1,-1,4;-1,2,1,5];
A = M(:, 1:3);

rA = rank(A);
rM = rank(M);

if rA == rM && rA == 3
    disp('Pi ed r si intersecano in un punto');
    v_r = cross(A(1, :),A(2, :));
    v_pi = A(3, :);

    if norm(cross(v_r, v_pi)) == 0
        disp('Pi e r sono perpendicolari');
    else
        disp('Pi e r NON sono perpendicolari');
    end
elseif rA == rM && rA == 2
    disp('r giace su Pi');
elseif rA == 2 && rM == 3
    disp('Pi ed r sono paralleli');
end

% a è corretta