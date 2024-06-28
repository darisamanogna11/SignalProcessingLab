w0 = pi/4;
r0 = 0.9;
b0 = 1;
b = b0 * ((1 - exp(1i * w0)) * (1 - exp(-1i * w0)));
a = [1, -r0 * (exp(1i * w0) + exp(-1i * w0)), r0^2];

N= 2001;
[H, w] = freqz(b, a,N);

figure;
subplot(2, 1, 1);
plot(w, 20*log10(abs(H)));
title('IIR Notch Filter Frequency Response');
xlabel('Frequency');
ylabel('Magnitude (dB)');
grid on;

subplot(2, 1, 2);
plot(w, angle(H));
title('Phase Response');
xlabel('Frequency');
ylabel('Phase');
grid on;
