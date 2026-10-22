function ode_demo
k = .35; ambient = 20; y0 = 90; f = @(~,T) -k*(T-ambient); [t,T] = rk4(f,[0 12],y0,.25); exact = ambient+(y0-ambient)*exp(-k*t);
fig = figure('Color','w'); plot(t,T,'o-',t,exact,'k--','LineWidth',1.3); grid on; xlabel('Time (min)'); ylabel('Temperature (C)'); legend('RK4','Exact','Location','northeast'); title('Newton cooling'); save_figure(fig,'22_initial_value_problem.png');
end
