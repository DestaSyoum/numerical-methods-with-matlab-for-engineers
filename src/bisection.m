function [root, history] = bisection(f, a, b, tol, maxIter)
%BISECTION Find a bracketed root using interval halving.
if nargin < 4, tol = 1e-8; end
if nargin < 5, maxIter = 100; end
fa = f(a); fb = f(b);
assert(fa * fb < 0, 'The interval must bracket a sign change.');
history = zeros(maxIter, 3);
for k = 1:maxIter
    root = (a + b) / 2; fr = f(root);
    history(k, :) = [k, root, fr];
    if abs(fr) < tol || (b - a) / 2 < tol
        history = history(1:k, :); return
    elseif fa * fr < 0
        b = root; fb = fr;
    else
        a = root; fa = fr;
    end
end
history = history(1:maxIter, :);
warning('Maximum iterations reached.');
end
