load('q2_1.mat'); 
M = 2;

y_zoh_x1 = zero_order_hold_interpolation(x1, M);
y_linear_x1 = interp(x1, M);
n_original_x1 = 1:length(x1);
n_upsampled = linspace(1, length(x1), M * length(x1));

figure;
subplot(2, 1, 1);
stem(n_original_x1, x1, 'filled', 'LineWidth', 1.25);
title('Original Sequence x1');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
stem(n_upsampled, y_zoh_x1, 'filled', 'LineWidth', 1.25);
hold on;
stem(n_upsampled, y_linear_x1, 'r', 'filled', 'LineWidth', 1.25);
legend('Zero-Order Hold', 'Linear Interpolation');
title(['Upsampled Sequence x1 (M = ' num2str(M) ')']);
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

sgtitle(['Comparison of Upsampling Methods for Sequence x1 (M = ' num2str(M) ')'], 'Interpreter', 'none');
