function [t, y] = rk4(f, tspan, y0, h)
%RK4 Solve y'=f(t,y) using classical fourth-order Runge-Kutta.
t = tspan(1):h:tspan(2); if t(end) < tspan(2), t(end+1) = tspan(2); end
y = zeros(numel(y0), numel(t)); y(:,1) = y0(:);
for k = 1:numel(t)-1
    dt = t(k+1)-t(k); tk = t(k); yk = y(:,k);
    k1 = f(tk, yk); k2 = f(tk+dt/2, yk+dt*k1/2);
    k3 = f(tk+dt/2, yk+dt*k2/2); k4 = f(tk+dt, yk+dt*k3);
    y(:,k+1) = yk + dt*(k1 + 2*k2 + 2*k3 + k4)/6;
end
end
