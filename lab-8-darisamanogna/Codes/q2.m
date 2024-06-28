x = [1, 2];
N = 2;
k = 0:N-1;
X= zeros(1, N);

for n = 0:N-1
    X(n+1) = sum(x .* exp(-1i * 2 * pi * n * k / N));
end

disp(X);
