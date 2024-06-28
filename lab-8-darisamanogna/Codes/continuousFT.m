function X = continuousFT(t, xt, a, b, w)
    syms t;
    xt = subs(xt, t);
    w= w(:); 
    N = length(w);
    X = zeros(N, 1);

    for k = 1:N
        X(k) = int(xt * exp(-1i * k * t), t, a, b);
    end
end
