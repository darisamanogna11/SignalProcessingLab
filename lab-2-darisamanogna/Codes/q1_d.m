% main_script.m
x1 = x;
n = 1:101;
N = 10;
res = ma(x1, N);

figure;
stem(n, res, 'filled', 'LineWidth', 1.25);
title('Moving Average for N=100');
xlabel('index');
ylabel('Amplitude');

function y = ma(x1, N)
    y = zeros(size(x1));
    
    for i = 1:length(x1)
        p1 = max(1, i - N + 1);
        p2 = i;
        y(i) = mean(x1(p1:p2));
    end
end