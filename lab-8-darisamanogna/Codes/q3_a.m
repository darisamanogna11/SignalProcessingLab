f0 = 10; 
Fs = 5000; 
t = 0:1/Fs:1; 
B = 4;
a = 1; 

x = sin(2*pi*f0*t);
xn = x;
xq = quadratic_quant(xn, B, a);

quantization_error = xn - xq;

figure;

subplot(3, 1, 1);
plot(t, xn);
title('Sampled Signal x[n]');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(t, xq);
title('Quantized Signal xq[n]');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(t, quantization_error);
title('Quantization Error eq[n]');
xlabel('Time (s)');
ylabel('Amplitude');

% Step g) Compare non-uniform quantizer with a uniform quantizer
% The non-uniform quantizer is more accurate in regions with high signal energy
% as it allocates more quantization levels to those regions. A uniform quantizer
% would provide the same level of accuracy across the entire range, which might
% lead to quantization errors in high-energy regions.

% Display your observations in the comments.
