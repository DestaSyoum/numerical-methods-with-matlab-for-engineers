function stiff_ode_demo
f = @(t,y) -1000*(y-cos(t))-sin(t); [t45,y45] = ode45(f,[0 1],0); [t15,y15] = ode15s(f,[0 1],0);
fig = figure('Color','w'); plot(t45,y45,'o-',t15,y15,'.-','LineWidth',1.1); grid on; xlabel('Time'); ylabel('y'); legend(sprintf('ode45 (%d steps)',numel(t45)),sprintf('ode15s (%d steps)',numel(t15)),'Location','best'); title('Stiff ODE solver comparison'); save_figure(fig,'23_stiff_system.png');
end
