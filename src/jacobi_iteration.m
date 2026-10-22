function [x, history] = jacobi_iteration(A, b, x0, tol, maxIter)
%JACOBI_ITERATION Solve A*x=b with Jacobi's fixed-point iteration.
if nargin < 4, tol = 1e-8; end
if nargin < 5, maxIter = 200; end
assert(all(diag(A) ~= 0), 'Diagonal entries must be nonzero.');
D = diag(diag(A)); R = A - D; x = x0(:); history = zeros(maxIter, 1);
for k = 1:maxIter
    xNew = D \ (b(:) - R * x);
    history(k) = norm(xNew - x, inf);
    x = xNew;
    if history(k) < tol, history = history(1:k); return; end
end
warning('Maximum iterations reached.');
end
