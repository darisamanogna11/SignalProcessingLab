function X = radix2fft(x)
    N = length(x);

    if N == 2
        X = fft(x);
    else
        x_even = x(1:2:N);
        x_odd = x(2:2:N);
        X_even = radix2fft(x_even);
        X_odd = radix2fft(x_odd);
        twiddle = exp(-1i * 2 * pi / N * (0:N/2-1));
        X = [X_even, X_even] + twiddle .* [X_odd, X_odd];
    end
end
