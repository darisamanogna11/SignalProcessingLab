function X = DT_Fourier(x, N0, w)
    N = length(x);
    X = zeros(size(w));
    for i = 1:length(w)
        X(i) = sum(x .* exp(-1j * w(i) * (0:N-1 - N0)));
    end
end