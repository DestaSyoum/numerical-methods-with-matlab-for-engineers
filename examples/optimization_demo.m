function optimization_demo
f = @(x) (x-2.4).^2 + 0.2*sin(5*x) + 1; [xopt,fopt] = golden_section(f,0,5);
fprintf('Minimum f(%.5f) = %.5f\n',xopt,fopt); x = linspace(0,5,500); fig = figure('Color','w');
plot(x,f(x),'LineWidth',1.6); hold on; plot(xopt,fopt,'ro','MarkerFaceColor','r'); grid on
xlabel('Design variable'); ylabel('Objective'); legend('Objective','Minimum','Location','best'); title('Golden-section search'); save_figure(fig,'07_optimization.png');
end
