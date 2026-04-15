function m = massimo(a,b)
    if a < b
        m = b;
    else
        m = a;
    end
end

function [m,p] = maxvec(v)
    m = v(1);
    p = 1;
    for ii = 1:length(v)
        if v(ii) > m
            m = v(ii);
            p = ii;
        end
    end
end

massimo(6, 12)

[m,p] = maxvec([1,2,3,7,5]);
fprintf('The maximum value is %d at index %d\n', m, p);