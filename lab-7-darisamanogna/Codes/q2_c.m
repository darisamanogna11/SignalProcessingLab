t_fine = 0:0.001:2;
x_t = cos(5*pi*t_fine) + sin(10*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
x_n = cos(5*pi*t_samples) + sin(10*pi*t_samples);
y1= interp1(t_samples, x_n, t_fine, 'previous');
y2 = interp1(t_samples, x_n, t_fine, 'linear');
x_n=cos(5*pi*t_samples)+sin(10*pi*t_samples);
figure;

subplot(2, 2, 1);
plot(t_fine, x_t);
title('Continuous-time Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');


subplot(2, 2, 2);
plot(t_fine, y1);
title('Zero-Order Hold Reconstruction');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 2, 3);
plot(t_fine, y2);
title('Linear Interpolation Reconstruction');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,2,4);
x_sinc_recon = sinc_recon(t_samples, x, Ts, t_fine);
plot(t_fine, x_sinc_recon);
title('Sinc Interpolation Reconstruction');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;
sgtitle('Signal Sampling and Reconstruction');


