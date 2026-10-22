function differentiation_demo
f = @(x) exp(x); exact = exp(1); h = logspace(-12,-1,200); estimate = arrayfun(@(step) central_difference(f,1,step),h);
fig = figure('Color','w'); loglog(h,abs(estimate-exact),'LineWidth',1.5); grid on; xlabel('Step size h'); ylabel('Absolute error'); title('Central-difference error'); save_figure(fig,'21_numerical_differentiation.png');
end
