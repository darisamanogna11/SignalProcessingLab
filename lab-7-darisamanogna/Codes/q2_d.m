
clc;
clear;
interval_start = 0.25;
interval_end = 1.75;
Ts = 0.1;
t_fine = 0:0.001:2;
t_samples = 0:Ts:2;
x = cos(5 * pi * t_fine) + sin(10 * pi * t_fine);
x_resampled = interp1(t_fine, x, t_samples, 'linear');

x_zero_order_hold = interp1(t_samples, x_resampled, t_fine, 'previous');
x_linear_interpolation = interp1(t_samples, x_resampled, t_fine, 'linear');
x_sinc_recon = zeros(size(t_fine));
for i = 1:length(t_fine)
    indices = (abs(t_fine(i) - t_samples) < Ts/2);
    x_sinc_recon(i) = sum(x_resampled(indices) .* sinc((t_fine(i) - t_samples(indices))/Ts));
end

mae_zero_order_hold = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_zero_order_hold(interval_start/Ts+1:interval_end/Ts+1)));
mae_linear_interpolation = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_linear_interpolation(interval_start/Ts+1:interval_end/Ts+1)));
mae_sinc_interpolation = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_sinc_recon(interval_start/Ts+1:interval_end/Ts+1)));

fprintf('MAE for Zero-Order Hold Reconstruction: %f\n', mae_zero_order_hold);
fprintf('MAE for Linear Interpolation Reconstruction: %f\n', mae_linear_interpolation);
fprintf('MAE for Sinc Interpolation Reconstruction: %f\n', mae_sinc_interpolation);
