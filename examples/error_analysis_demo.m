function error_analysis_demo
f = @(x) sin(x); exact = cos(1); h = logspace(-14,-1,200);
err = abs((f(1+h)-f(1))./h-exact);
fig = figure('Color','w'); loglog(h,err,'LineWidth',1.5); grid on
xlabel('Step size h'); ylabel('Absolute error'); title('Truncation and roundoff trade-off');
save_figure(fig,'04_error_tradeoff.png');
end
