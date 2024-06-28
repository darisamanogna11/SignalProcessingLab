% Define a function for zero-order hold interpolation
function y = zero_order_hold_interpolation(x, M)
    y = upsample(x, M);
end
