clear;
clc;

n = 100;

A = 4 * eye(n) + ...
    diag(-1 * ones(n - 1, 1), 1) + diag(-1 * ones(n - 1, 1), -1) + ...
    diag(-2 * ones(n - 10, 1), 10) + diag(-2 * ones(n - 10, 1), -10);


cond_inf = round(cond(A, inf), 1)