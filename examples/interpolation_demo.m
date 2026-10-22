function interpolation_demo
x = [0 .8 1.7 2.8 4]'; y = exp(-.35*x).*sin(2*x)+.4; xq = linspace(0,4,400)';
yL = lagrange_interpolation(x,y,xq); yS = pchip(x,y,xq);
fig = figure('Color','w'); plot(x,y,'ko','MarkerFaceColor','k'); hold on; plot(xq,yL,'LineWidth',1.4); plot(xq,yS,'LineWidth',1.4); grid on
xlabel('x'); ylabel('y'); legend('Data','Lagrange polynomial','PCHIP spline','Location','best'); title('Interpolation methods'); save_figure(fig,'17_18_interpolation.png');
end
