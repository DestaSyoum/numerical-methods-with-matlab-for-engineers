function eigenvalue_demo
A = [4 -1 0; -1 4 -1; 0 -1 3]; [lambda,v,history] = power_method(A,[1;1;1]);
fprintf('Dominant eigenvalue %.8f; residual %.2e\n',lambda,norm(A*v-lambda*v)); fig = figure('Color','w');
semilogy(history,'o-','LineWidth',1.3); grid on; xlabel('Iteration'); ylabel('|delta lambda|'); title('Power-method convergence'); save_figure(fig,'13_eigenvalue.png');
end
