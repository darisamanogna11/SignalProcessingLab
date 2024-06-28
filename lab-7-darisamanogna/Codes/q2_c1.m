clc;
clear;

% Part 7.1: Original Signal Plot
t_fine = 0:0.001:2;
Ts = 0.1;
t_samples = 0:Ts:2;
x = cos(5 * pi * t_fine) + sin(10 * pi * t_fine);

figure;

% Part 7.1: Original Signal Plot
subplot(2, 2, 1);
plot(t_fine, x);
title('Original Signal');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

% a) Zero-Order Hold Reconstruction
% Resample x to match the length of t_samples
x_resampled = interp1(t_fine, x, t_samples, 'linear');
x_zero_order_hold = interp1(t_samples, x_resampled, t_fine, 'previous');

% b) Linear Interpolation Reconstruction
x_linear_interpolation = interp1(t_samples, x_resampled, t_fine, 'linear');

% c) Sinc Interpolation Reconstruction
x_sinc_recon = sinc_recon(t_samples, x_resampled, Ts, t_fine);

% Plot reconstructed signals
subplot(2, 2, 2);
plot(t_samples, x_resampled, 'bo', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
hold on;
plot(t_fine, x_zero_order_hold, 'r', 'LineWidth', 2);
title('Zero-Order Hold Reconstruction');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2, 2, 3);
plot(t_samples, x_resampled, 'bo', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
hold on;
plot(t_fine, x_linear_interpolation, 'g', 'LineWidth', 2);
title('Linear Interpolation Reconstruction');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2, 2, 4);
plot(t_samples, x_resampled, 'bo', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
hold on;
plot(t_fine, x_sinc_recon, 'm', 'LineWidth', 2);
title('Sinc Interpolation Reconstruction');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

% Calculate and display MAE for each reconstruction method in the interval [0.25, 1.75]
interval_start = 0.25;
interval_end = 1.75;

mae_zero_order_hold = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_zero_order_hold(interval_start/Ts+1:interval_end/Ts+1)));
mae_linear_interpolation = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_linear_interpolation(interval_start/Ts+1:interval_end/Ts+1)));
mae_sinc_interpolation = max(abs(x(interval_start/Ts+1:interval_end/Ts+1) - x_sinc_recon(interval_start/Ts+1:interval_end/Ts+1)));

fprintf('MAE for Zero-Order Hold Reconstruction: %f\n', mae_zero_order_hold);
fprintf('MAE for Linear Interpolation Reconstruction: %f\n', mae_linear_interpolation);
fprintf('MAE for Sinc Interpolation Reconstruction: %f\n', mae_sinc_interpolation);

% Helper function for sinc interpolation
function xr = sinc_recon(n, xn, Ts, t_fine)
    omega_s = 2 * pi / Ts;
    omega_c = omega_s / 2; % Cut-off frequency
    xr = zeros(size(t_fine));
    for i = 1:length(t_fine)
        t = t_fine(i);
        % Restrict summation to [0, 2]
        for j = max(1, floor((t - 2) / Ts)):min(length(n), ceil(t / Ts))
            xr(i) = xr(i) + xn(j) * sin(omega_c * (t - n(j) * Ts)) / (pi * (t - n(j) * Ts));
        end
    end
end
