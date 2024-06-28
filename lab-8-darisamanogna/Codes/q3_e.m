max_errors = zeros(1, 8);
for B = 1:8
    xq = quadratic_quant(xn, B, a);
    quantization_error = xn - xq;
    max_errors(B) = max(abs(quantization_error));
end

figure;
plot(1:8, max_errors, '-o');
title('B vs. Max Absolute Quantization Error');
xlabel('B (Number of Bits)');
ylabel('Max Absolute Quantization Error');