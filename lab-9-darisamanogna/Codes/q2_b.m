N=1001;
n=0:N-1;
wn=ones(1,1001);
nc=(N-1)/2;

w=-pi/6:pi/6;
hd=1/pi*(n-nc).*(sin((n-nc)*(pi/6)));
hn=hd.*wn;
H=fft(hn,1001);
mag_H=20*log10(abs(H)/max(abs(H)));


figure;

subplot(3,1,1)
stem(hn);
xlabel('time');
ylabel('hn');

subplot(3, 1, 2);
plot(linspace(0, 2*pi, 1001), mag_H);
title('DFT Magnitude (dB)');
grid on;
ylim([-100, 10]);

subplot(3,1,3)
plot(linspace(0, 2*pi, 1001),angle(H));
xlabel('time');
ylabel('phase');



