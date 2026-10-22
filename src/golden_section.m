function [xOpt, fOpt, history] = golden_section(f, a, b, tol)
%GOLDEN_SECTION Minimize a unimodal scalar function on [a,b].
if nargin < 4, tol = 1e-6; end
phi = (sqrt(5) - 1) / 2;
c = b - phi * (b - a); d = a + phi * (b - a);
fc = f(c); fd = f(d); history = [];
while (b - a) > tol
    history(end+1, :) = [(a+b)/2, b-a]; %#ok<AGROW>
    if fc < fd
        b = d; d = c; fd = fc; c = b - phi * (b - a); fc = f(c);
    else
        a = c; c = d; fc = fd; d = a + phi * (b - a); fd = f(d);
    end
end
xOpt = (a + b) / 2; fOpt = f(xOpt);
end
