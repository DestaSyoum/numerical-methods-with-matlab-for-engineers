function integration_demo
f = @(x) exp(-x.^2); exact = sqrt(pi)/2*erf(2); n = 2:2:40; estimate = arrayfun(@(k) composite_simpson(f,0,2,k),n);
fig = figure('Color','w'); semilogy(n,abs(estimate-exact),'o-','LineWidth',1.3); grid on; xlabel('Subintervals'); ylabel('Absolute error'); title('Composite Simpson convergence'); save_figure(fig,'19_20_integration.png');
end
