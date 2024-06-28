T = 1;
T1 = 0.2;
t1 = -0.2;
t2 = 0.2;
time_grid = -0.5:0.01:0.5;
N_values = (numel(time_grid) - 1) / 2;
syms t;
xt_square = piecewise((t < -T1), 0, (t >= -T1) & (t <= T1), 1, (t > T1), 0);

F = fourierCoeff(t, xt_square, T, t1, t2, N_values);
figure;
FS_idx = 1:2*N_values+1;
stem(FS_idx, F, 'b', 'LineWidth', 2);
grid on;
xlabel('Coefficient Index ');
ylabel('Fourier Coefficients');
title('Fourier Coefficients');
