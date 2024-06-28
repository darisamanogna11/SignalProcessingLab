fo=12;
fs=64;
n1=0:127;
n2=0:255;
n3=0:511;
n4=0:1023;
pn1=cos((2*pi*fo*n1)/fs);
pn2=cos((2*pi*fo*n2)/fs);
pn3=cos((2*pi*fo*n3)/fs);
pn4=cos((2*pi*fo*n4)/fs);
wn1=(0<=n1 & n1<=15);
wn2=(0<=n2 & n2<=31);
wn3=(0<=n3 & n3<=63);
wn4=(0<=n4 & n4<=127);
xn1=pn1.*wn1;
xn2=pn2.*wn2;
xn3=pn3.*wn3;
xn4=pn4.*wn4;
y1=fft(xn1,128);
y2=fft(xn2,256);
y3=fft(xn3,512);
y4=fft(xn4,1024);
figure
subplot(2,2,1)
plot(n1,abs(y1));
title('L=16')
xlabel('n');
ylabel('|y1|');
subplot(2,2,2)
plot(n2,abs(y2));
title('L=32')
xlabel('n');
ylabel('|y2|');
subplot(2,2,3)
plot(n3,abs(y3));
title('L=64')
xlabel('n');
ylabel('|y3|');
subplot(2,2,4)
plot(n4,abs(y4));
title('L=128')
xlabel('n');
ylabel('|y4|');