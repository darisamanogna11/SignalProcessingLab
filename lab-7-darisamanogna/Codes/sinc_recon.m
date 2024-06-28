function xr = sinc_recon(n, xn, Ts, t_fine)
    wc = pi / Ts;
    xr = zeros(size(t_fine));
    for i = 1:length(t_fine)
        t = t_fine(i);
        for j = 1:length(n)
            if n(j)*Ts == t
                xr(i) = xr(i) + xn(j);
            else
                xr(i) = xr(i) + xn(j) * sin(wc* (t - n(j)*Ts)) / (pi * (t - n(j)*Ts));
            end
        end
    end
end
