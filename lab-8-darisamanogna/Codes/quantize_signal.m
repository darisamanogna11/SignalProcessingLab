function quantized_signal = quantize_signal(signal, B, a)
    step_size = 2 * a / (2^B);
    quantized_signal = round(signal / step_size) * step_size;
end