clc;
clear;
close all;
N = 1000; 
omega = pi / 200; 
n = 0:N;
s = 5 * sin(omega * n);
 w = -10: 0.01: 10;
v = randn(size(n));
x = s + v;


t = 10;
filter = [1, -1, zeros(1, t-2)];

y = conv(x, filter, 'full');

X_noisy = DT_Fourier(x, 1, w);
Y_filtered = DT_Fourier(y, 1, w);

figure(1)
subplot(2, 2, 1);
plot(w, abs(X_noisy));
title('Magnitude Spectrum of Noisy Signal');
subplot(2, 2, 2);
plot(w, angle(X_noisy));
title('Phase Spectrum');
subplot(2, 2, 3);
plot(w, real(X_noisy));
title('Real Part Spectrum');
subplot(2, 2, 4);
plot(w, imag(X_noisy));
title('Imaginary Part Spectrum');

figure(2)
subplot(2, 2, 1);
plot(w, abs(Y_filtered));
title('Magnitude Spectrum of Filtered Signal');
subplot(2, 2, 2);
plot(w, angle(Y_filtered));
title('Phase Spectrum');
subplot(2, 2, 3);
plot(w, real(Y_filtered));
title('Real Part Spectrum');
subplot(2, 2, 4);
plot(w, imag(Y_filtered));
title('Imaginary Part Spectrum');