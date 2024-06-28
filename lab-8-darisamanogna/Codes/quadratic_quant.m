function y = quadratic_quant(x, B, a)
    x(x < -a) = -a;
    x(x >= a) = a;
    L = 2^(B-1);
    r = linspace(0, 1, L+1);
    y = zeros(size(x));
    for i = 1:L
        range_min = a * r(i)^2;
        range_max = a * r(i+1)^2;
        indices = find(x >= range_min & x < range_max);
        y(indices) = (range_min + range_max) / 2;
    end
end
