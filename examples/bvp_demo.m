function bvp_demo
[x,y] = finite_difference_bvp(@(x) 0*x,@(x) 0*x,@(x) -pi^2*sin(pi*x),0,1,0,0,30); exact = sin(pi*x);
fig = figure('Color','w'); plot(x,y,'o-',x,exact,'k--','LineWidth',1.3); grid on; xlabel('x'); ylabel('y(x)'); legend('Finite difference','Exact','Location','best'); title('Boundary-value problem'); save_figure(fig,'24_boundary_value_problem.png');
end
