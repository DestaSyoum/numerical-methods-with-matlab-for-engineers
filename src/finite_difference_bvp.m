function [x, y] = finite_difference_bvp(p, q, r, a, b, ya, yb, n)
%FINITE_DIFFERENCE_BVP Solve y''+p(x)y'+q(x)y=r(x), y(a)=ya, y(b)=yb.
h = (b-a)/n; x = linspace(a,b,n+1)'; xi = x(2:end-1);
lower = 1 - h*p(xi)/2; main = -2 + h^2*q(xi); upper = 1 + h*p(xi)/2;
A = diag(main) + diag(lower(2:end),-1) + diag(upper(1:end-1),1);
rhs = h^2*r(xi); rhs(1) = rhs(1) - lower(1)*ya; rhs(end) = rhs(end) - upper(end)*yb;
y = [ya; A\rhs; yb];
end
