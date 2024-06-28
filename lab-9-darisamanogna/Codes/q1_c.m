w0=1;
T=2*pi;
t=-2*T:0.01:2*T;
wc=2;
A = [1/2,0,1/2];
xt=partialfouriersum(A,T,t);
B=myHPF(A,w0,wc);
xo=partialfouriersum(B,T,t);

figure;

subplot(2,1,1);
plot(t,xt);
xlabel('time');
ylabel('x(t)');

subplot(2,1,2);
plot(t,xo);
xlabel('time');
ylabel('xo(t)');


