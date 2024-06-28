n = 0:100;
a = 0.5;
b = [0.01, 0.5, 0.99];
x1 = a.^n .* (n >= 0);
w = -10:0.01:10;
for i = 1:length(b)
    x2 = b(i).^n .* (n >= 0) - b(i).^(-n-1) .* (n < 0);
    X1 = abs(freqz(x1, 1, w));
    X2 = abs(freqz(x2, 1, w));
    figure;
    subplot(2,2,1);
    stem(n, x1,"filled");
    title(sprintf('a = %.2f', a));
    xlabel('Time (samples)');
    ylabel('Amplitude');
    
    subplot(2,2,2);
    stem(n, x2,"filled");
    title(sprintf('b = %.2f', b(i)));
    xlabel('Time (samples)');
    ylabel('Amplitude');
    
    subplot(2,2,[3,4]);
    plot(w/pi, mag2db(X1));
    hold on;
    plot(w/pi, mag2db(X2));
    hold off;
    title(sprintf('DTFT Magnitude Spectrum for a=%.2f and b=%.2f', a, b(i)));
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude (dB)');
end