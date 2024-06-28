wc=2.5;
w0=6/5;
G=1;
a=1;
A=[1/2,1i/2,0,0,0,-1i/2,1/2];
T=5*pi/3;
t=-2*T:0.01:2*T;
xt=partialfouriersum(A,T,t);
B=NonIdeal(A,w0,G,a);
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
