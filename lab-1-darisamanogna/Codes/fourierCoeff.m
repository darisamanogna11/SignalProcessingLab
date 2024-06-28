function F = fourierCoeff(t, xt, T, t1, t2, N)
    w0 = 2*pi/T;
    F = zeros(2*N+1, 1);

    for nn = -N:N
        ak = (1/T) * int(xt * exp(-1i * nn * w0 * t), t, t1, t2);
        F(nn + N + 1) = ak;
    end
end
