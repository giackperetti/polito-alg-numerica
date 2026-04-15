function [f,ii] = taylor_exp(x, tol)
    f = 0;
    ii = 0;
    t = 1;
    while t >= tol
        f = f + t;
        ii = ii + 1;
        t = (x^ii)/factorial(ii);
    end

end

% x_val = 2;
% tol = 1e-10;
% 
% [exp_est,n_iter] = taylor_exp(x_val, tol);
% fprintf('Estimation: %.10f\n', exp_est);
% fprintf('Iterations: %d\n', n_iter);
% 
% true_val = exp(x_val);
% rel_error = abs(exp_est - true_val) / true_val;
% 
% fprintf('Relative Error: %.2e\n', rel_error);