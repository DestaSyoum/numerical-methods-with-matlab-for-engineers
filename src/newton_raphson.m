function [root, history] = newton_raphson(f, df, x0, tol, maxIter)
%NEWTON_RAPHSON Find a root from a differentiable function and derivative.
if nargin < 4, tol = 1e-8; end
if nargin < 5, maxIter = 50; end
history = zeros(maxIter, 3); root = x0;
for k = 1:maxIter
    fval = f(root); slope = df(root);
    assert(abs(slope) > eps, 'Derivative is too close to zero.');
    next = root - fval / slope;
    history(k, :) = [k, next, f(next)];
    if abs(next - root) < tol || abs(f(next)) < tol
        root = next; history = history(1:k, :); return
    end
    root = next;
end
history = history(1:maxIter, :); warning('Maximum iterations reached.');
end
