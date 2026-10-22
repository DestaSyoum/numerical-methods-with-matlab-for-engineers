function integral = composite_simpson(f, a, b, n)
%COMPOSITE_SIMPSON Integrate f over [a,b] using n (even) subintervals.
assert(mod(n,2) == 0, 'Simpson''s rule requires an even n.');
x = linspace(a,b,n+1); y = f(x); h = (b-a)/n;
integral = h/3 * (y(1) + y(end) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)));
end
