Ts1=0.1;
Ts2=0.2;
Ts3=0.3;
Ts4=0.4;
t=0:2;
t_fine=0:0.001:2;
xt=cos(5*pi*t_fine);

figure

subplot(2,2,1)
t_samples1=0:Ts1:2;
x_sinc_recon_1= sinc_recon(t_samples1, xt, Ts1, t_fine);
plot(t_fine, x_sinc_recon_1);
title('Ts=0.1s');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2,2,2)
t_samples2=0:Ts2:2;
x_sinc_recon_2= sinc_recon(t_samples2, xt, Ts2, t_fine);
plot(t_fine, x_sinc_recon_2);
title('Ts=0.2s');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2,2,3)
t_samples3=0:Ts:2;
x_sinc_recon_3= sinc_recon(t_samples3, xt, Ts3, t_fine);
plot(t_fine, x_sinc_recon_3);
title('Ts=0.3s');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2,2,4)
t_samples4=0:Ts4:2;
x_sinc_recon_4= sinc_recon(t_samples4, xt, Ts4, t_fine);
plot(t_fine, x_sinc_recon_4);
title('Ts=0.4s');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

sgtitle('Signal Sampling and sinc Interpolation Reconstruction');

function x_recon = sinc_recon(t_samples, x_samples, Ts, t_fine)
    x_recon = zeros(size(t_fine));
    for i = 1:length(t_samples)
        x_recon = x_recon + x_samples(i) * sinc((t_fine - t_samples(i)) / Ts);
    end
end

