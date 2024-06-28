SQNR = zeros(1, 8);
for B = 1:8
    xq = quadratic_quant(xn, B, a);
    quantization_error = xn - xq;
    signal_power = sum(xn.^2) / length(xn);
    noise_power = sum(quantization_error.^2) / length(xn);
    SQNR(B) = 10 * log10(signal_power / noise_power);
end

figure;
plot(1:8, SQNR, '-o');
title('B vs. Signal to Quantization Noise Ratio (SQNR)');
xlabel('B (Number of Bits)');
ylabel('SQNR (dB)');