function [lambda, v, history] = power_method(A, v0, tol, maxIter)
%POWER_METHOD Estimate the dominant eigenvalue and its unit eigenvector.
if nargin < 3, tol = 1e-8; end
if nargin < 4, maxIter = 200; end
v = v0(:) / norm(v0); history = zeros(maxIter, 1); lambda = 0;
for k = 1:maxIter
    w = A * v; v = w / norm(w); lambdaNew = v' * A * v;
    history(k) = norm(A*v-lambdaNew*v, inf); lambda = lambdaNew;
    if history(k) < tol, history = history(1:k); return; end
end
warning('Maximum iterations reached.');
end
