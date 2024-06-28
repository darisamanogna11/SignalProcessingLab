t_continuous = -1:0.001:1;
x_continuous = 1 - abs(t_continuous);
Ts_values = [0.5, 0.2, 0.1, 0.05];
samples = cell(1, length(Ts_values));
n_values = cell(1, length(Ts_values));


for i = 1:length(Ts_values)
    Ts = Ts_values(i);
    t_samples = -1:Ts:1;
    n = -1/Ts:1:(1/Ts);
    x_samples = 1 - abs(t_samples);
    samples{i} = x_samples;
    n_values{i} = n;
end
t_fine = -10:0.001:10;
reconstructed_signals = cell(1, length(Ts_values));

for i = 1:length(Ts_values)
    Ts = Ts_values(i);
    x_samples = samples{i};
    n = n_values{i};
    reconstructed_signal = zeros(size(t_fine));
    for k = 1:length(n)
        reconstructed_signal = reconstructed_signal + x_samples(k) * sinc((t_fine - n(k) * Ts) / Ts);
    end

    reconstructed_signals{i} = reconstructed_signal;
end

figure;

    subplot(2, 2, 1);
    stem(n_values{1}, samples{1}, 'r', 'filled');
    hold on;
    plot(t_fine, reconstructed_signals{1}, 'b');
    title(['Ts = ', num2str(Ts_values(1)), 's']);
    xlabel('Time');
    ylabel('Amplitude'); 

    subplot(2, 2, 2);
    stem(n_values{2}, samples{2}, 'r', 'filled');
    hold on;
    plot(t_fine, reconstructed_signals{2}, 'b');
    title(['Ts = ', num2str(Ts_values(2)), 's']);
    xlabel('Time');
    ylabel('Amplitude'); 

    subplot(2, 2, 3);
    stem(n_values{3}, samples{3}, 'r', 'filled');
    hold on;
    plot(t_fine, reconstructed_signals{3}, 'b');
    title(['Ts = ', num2str(Ts_values(3)), 's']);
    xlabel('Time');
    ylabel('Amplitude'); 

    subplot(2, 2, 4);
    stem(n_values{4}, samples{4}, 'r', 'filled');
    hold on;
    plot(t_fine, reconstructed_signals{4}, 'b');
    title(['Ts = ', num2str(Ts_values(4)), 's']);
    xlabel('Time');
    ylabel('Amplitude'); 
sgtitle('Sinc Interpolation for Different Sampling Intervals');
