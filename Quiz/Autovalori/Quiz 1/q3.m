clear;

x = linspace(-1,1,10);
A = vander(x);

% potenze
% function [lambda_max, w, m] = potenze(A, z, tol, m_max)
n = size(A,1);
z = ones(n,1);
w = z / norm(z);
lambda = 0;

for m = 1:24
    z = A * w;
    lambda_max = w' * z;
    w = z / norm(z);

    if abs(lambda_max - lambda) <= 1e-10 * abs(lambda_max)
        break
    end

    lambda = lambda_max;
end

w