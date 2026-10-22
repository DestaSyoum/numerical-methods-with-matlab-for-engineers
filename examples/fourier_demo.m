function fourier_demo
fs = 500; t = (0:1/fs:2-1/fs)'; signal = sin(2*pi*35*t)+.45*sin(2*pi*90*t)+.15*randn(size(t));
N = numel(t); freq = (0:N/2-1)'*fs/N; spectrum = 2*abs(fft(signal)/N); spectrum = spectrum(1:N/2);
fig = figure('Color','w'); tiledlayout(2,1); nexttile; plot(t,signal); xlim([0 .25]); grid on; xlabel('Time (s)'); ylabel('Amplitude'); title('Synthetic measurement');
nexttile; plot(freq,spectrum,'LineWidth',1.3); xlim([0 150]); grid on; xlabel('Frequency (Hz)'); ylabel('Amplitude'); title('One-sided amplitude spectrum'); save_figure(fig,'16_fourier_analysis.png');
end
