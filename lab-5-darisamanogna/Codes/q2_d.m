M = [5, 21, 51]; 
n = 0:1000;
wn = pi / 200;
sn = 5 * sin(wn * n);
vn = randn(1, 1001);
xn = sn + vn;

figure;

for i = 1:length(M)
    hn = ones(1, M(i)) / M(i);
    yn = conv(xn, hn, 'full');

    subplot(2,2,1);
    plot(n, sn);
    xlabel('Time');
    ylabel('s[n]');
    title('Original signal');

    subplot(2,2,i+1);
    plot(n, yn(1:length(n)), 'b');
    xlabel('Time');
    ylabel('s[n] and y[n]');
    title(['Filtered Signal (M = ' num2str(M(i)) ')']);
    legend('Original', 'Filtered');
end
