fo=11;
fs=64;
L=16;
n1=0:15;
n2=0:31;
n3=0:63;
n4=0:127;
pn1=cos((2*pi*fo*n1)/fs);
pn2=cos((2*pi*fo*n2)/fs);
pn3=cos((2*pi*fo*n3)/fs);
pn4=cos((2*pi*fo*n4)/fs);
wn1=(0<=n1 & n1<=15);
wn2=(0<=n2 & n2<=15);
wn3=(0<=n3 & n3<=15);
wn4=(0<=n4 & n4<=15);
xn1=pn1.*wn1;
xn2=pn2.*wn2;
xn3=pn3.*wn3;
xn4=pn4.*wn4;
y1=fft(xn1,16);
y2=fft(xn2,32);
y3=fft(xn3,64);
y4=fft(xn4,128);
figure
subplot(2,2,1)
stem(n1,abs(y1));
title('m=1')
xlabel('n');
ylabel('|y1|');
subplot(2,2,2)
stem(n2,abs(y2));
title('m=2')
xlabel('n');
ylabel('|y2|');
subplot(2,2,3)
plot(n3,abs(y3));
title('m=4')
xlabel('n');
ylabel('|y3|');
subplot(2,2,4)
plot(n4,abs(y4));
title('when m=8')
xlabel('n');
ylabel('|y4|');
sgtitle("when fo=11Hz")


