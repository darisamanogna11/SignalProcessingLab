% Given signal values
x1 = [-0.0808
    0.0872
    0.0894
   -0.0040
   -0.0020
    0.1194
    0.0864
    0.1517
    0.2113
    0.0278
    0.1134
    0.1216
    0.2677
    0.1154
    0.1476
    0.2074
    0.2342
    0.0231
    0.2672
    0.0617
    0.2352
    0.2563
    0.1982
    0.3150
    0.0101
    0.1198
    0.3988
    0.3300
    0.4198
    0.2178
    0.2488
    0.1498
    0.1827
    0.2315
    0.2978
    0.3100
    0.4538
    0.3470
    0.4640
    0.3199
    0.4997
    0.2829
    0.3531
    0.4956
    0.5573
    0.2960
    0.5682
    0.3465
    0.3623
    0.4397
    0.6547
    0.3566
    0.5659
    0.3938
    0.4009
    0.6983
    0.6008
    0.7766
    0.6509
    0.3879
    0.5458
    0.4846
    0.5208
    0.5084
    0.7713
    0.7562
    0.7642
    0.7497
    0.8764
    0.7002
    0.6133
    0.7991
    0.8630
    0.5037
    0.7571
    0.8094
    0.7036
    0.7646
    0.8872
    0.9991
    0.8563
    0.8968
    0.8275
    0.9269
    0.7987
    0.8887
    0.8696
    0.8049
    0.8350
    0.8645
    0.7920
    0.9868
    1.0603
    0.8639
    0.7797
    1.2092
    0.8955
    0.9497
    1.0706
    1.0617
    0.9639]; % Replace with your actual signal values

% Impulse response of the MA system
N = 5;
impulse_response = ones(1, N) / N;

% Convolve the signal with the impulse response
convolution_result = conv(x1, impulse_response, 'same');

% Plot the original signal, its trend using cumulative sum, and trend using convolution
n = 1:length(x1);

figure;
subplot(3, 1, 1);
stem(n, x1, 'filled', 'LineWidth', 1.25);
title('Original Signal');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
trend_cumsum = cumsum(x1);
stem(n, trend_cumsum, 'filled', 'LineWidth', 1.25);
title('Trend Using Cumulative Sum');
xlabel('Sample Index');
ylabel('Trend Value');
grid on;

subplot(3, 1, 3);
stem(n, convolution_result, 'filled', 'LineWidth', 1.25);
title('Trend Using Convolution');
xlabel('Sample Index');
ylabel('Trend Value');
grid on;

sgtitle('Comparison of Trend Analysis Methods', 'Interpreter', 'none');