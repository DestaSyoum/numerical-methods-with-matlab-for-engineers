function conditioning_demo
n = 8; A = hilb(n); xTrue = ones(n,1); b = A*xTrue; delta = 1e-7*ones(n,1); x = A\(b+delta);
amplification = norm(x-xTrue,inf)/norm(delta,inf); fprintf('cond(A) %.3e, amplification %.3e\n',cond(A),amplification);
fig = figure('Color','w'); bar([cond(A),amplification]); set(gca,'YScale','log','XTickLabel',{'cond(A)','observed'}); grid on
ylabel('Magnitude (log)'); title('Ill-conditioning in a Hilbert matrix'); save_figure(fig,'11_conditioning.png');
end
