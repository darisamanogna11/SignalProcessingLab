n = 0:1000;
wn = pi / 200;
sn = 5 * sin(wn * n);
vn = randn(1, 1001);
xn = sn + vn;

figure;
hn = [1, -1, zeros(1,6)];
yn=conv(xn,hn,"full");

    subplot(3,1,1);
    plot(n, sn);
    xlabel('Time');
    ylabel('s[n]');
    title('Original signal');


    subplot(3,1,2);
    plot(n, xn);
    xlabel('Time');
    ylabel('x[n]');
    title('Noise signal');


    subplot(3,1,3);
    plot(yn);
    xlabel('Time');
    ylabel('y[n]');
    title('Filtered signal');



