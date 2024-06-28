N=201;
n=0:200;
% xn=cos(n*pi/16)+0.25*sin(n*pi/16);
xn=cos(n*pi/16)+0.25*randn(1,201);

wn1=ones(1,N);
wn2=blackman(N);

y1=conv(xn,wn1,"full");
y2=conv(xn,wn2,"full");


figure;
subplot(3,1,1);
plot(xn);
xlabel('time')
ylabel('xn')

subplot(3,1,2);
plot(y1);
xlabel('time')
ylabel('y1')

subplot(3,1,3);
plot(y2);
xlabel('time')
ylabel('y2')

