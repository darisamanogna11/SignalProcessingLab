load('q2_1.mat'); 
M = 3;
y_zoh = zero_order_hold_interpolation(x, M);
y_linear = interp(x, M);

n_original = 1:length(x);
n_upsampled = linspace(1, length(x), length(y_zoh));

figure;
subplot(3, 1, 1);
stem(n_original, x, 'filled', 'LineWidth', 1.25);
title('Original Sequence');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
stem(n_upsampled, y_zoh, 'filled', 'LineWidth', 1.25);
title(['Upsampled Sequence (M = ' num2str(M) ', Zero-Order Hold)']);
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
stem(n_upsampled, y_linear, 'filled', 'LineWidth', 1.25);
title(['Upsampled Sequence (M = ' num2str(M) ', Linear Interpolation)']);
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

sgtitle(['Comparison of Upsampling Methods (M = ' num2str(M) ')'], 'Interpreter', 'none');
