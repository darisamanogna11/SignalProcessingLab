function y = partialfouriersum(A, T, time_grid)
    N = (length(A) - 1) / 2;
    y = zeros(size(time_grid));
    w0 = 2*pi/T;

    for k = -N:N
        y = y + A(k + N + 1) * exp(1i * k * w0 * time_grid);
    end
end
