function root_finding_demo
f = @(x) cos(x)-x; df = @(x) -sin(x)-1;
[xb,hb] = bisection(f,0,1); [xn,hn] = newton_raphson(f,df,1);
fprintf('Bisection %.10f (%d iters); Newton %.10f (%d iters)\n',xb,size(hb,1),xn,size(hn,1));
x = linspace(0,1,400); fig = figure('Color','w');
plot(x,f(x),'LineWidth',1.6); hold on; yline(0,'k:'); plot([xb xn],[0 0],'o','MarkerSize',7,'LineWidth',1.5);
grid on; xlabel('x'); ylabel('f(x)'); legend('cos(x)-x','Zero','Roots','Location','best'); title('Root finding');
save_figure(fig,'05_06_root_finding.png');
end
