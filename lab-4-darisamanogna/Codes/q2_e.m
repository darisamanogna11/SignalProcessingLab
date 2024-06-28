p=0.5;
N=1001;
n=[1,-1/p];
d=[1,-p];
y1=freqz(n,d,N,'whole');
y2=impz(n,d);
figure
subplot(2,1,1)
plot(y1)
title('frequency Response')

subplot(2,1,2)
plot(y2)
title('impulse Response')