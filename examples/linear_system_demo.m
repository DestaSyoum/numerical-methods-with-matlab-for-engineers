function linear_system_demo
A = [10 -1 2; -1 11 -1; 2 -1 10]; b = [6;25;-11]; xg = gauss_elimination(A,b);
[L,U,P] = lu_factorization(A); xlu = U\(L\(P*b)); [xj,history] = jacobi_iteration(A,b,zeros(3,1));
fprintf('Residuals: %.2e, %.2e, %.2e\n',norm(A*xg-b,inf),norm(A*xlu-b,inf),norm(A*xj-b,inf));
fig = figure('Color','w'); semilogy(history,'o-','LineWidth',1.3); grid on
xlabel('Iteration'); ylabel('||delta x||_inf'); title('Jacobi iteration convergence'); save_figure(fig,'09_12_linear_systems.png');
end
