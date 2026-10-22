function regression_demo
x = (0:0.5:5)'; y = 1.2+.8*x+.15*x.^2+[.1;-.08;.06;-.04;.05;-.09;.02;-.03;.08;-.02;.04];
line = linear_regression(x,y); c = poly_least_squares(x,y,2); xq = linspace(0,5,200)'; yq = c(1)+c(2)*xq+c(3)*xq.^2;
fig = figure('Color','w'); plot(x,y,'ko','MarkerFaceColor','k'); hold on; plot(xq,line.intercept+line.slope*xq,'LineWidth',1.5); plot(xq,yq,'LineWidth',1.5); grid on
xlabel('Input'); ylabel('Response'); legend('Data',sprintf('Linear R^2=%.3f',line.r2),'Quadratic','Location','northwest'); title('Least-squares curve fitting'); save_figure(fig,'14_15_regression.png');
end
