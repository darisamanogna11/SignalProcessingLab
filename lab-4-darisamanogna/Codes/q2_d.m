n=1001;
p=-0.8;
d=[1,p];
y1=freqz(1,d,n,'whole');
y2=impz(1,d);

figure
subplot(2,1,1)
stem(y1)
title('frequency Response')

subplot(2,1,2)
plot(y2)
title('impulse Response')