n = -10:25;
u_n = @(n) n >= 0;
x=n .*(u_n(n)-u_n(n-10)) + (20-n) .*(u_n(n-10)-u_n(n-20));

y = zeros(size(x));
y(1) = x(1);

for k = 2:length(x)
    y(k) = x(k) - x(k - 1);
end

subplot(2, 1, 1);
stem(n, x);
title('Input Sequence');
xlabel('n');
ylabel('x[n]');
grid on;

subplot(2, 1, 2);
stem(n, y);
title('Output Sequence');
xlabel('n');
ylabel('y[n]');
grid on;

sgtitle('First-Order Digital Differentiator');
