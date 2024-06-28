G=1;
a=1;
w0=1;
T=2*pi;
t=-2*T:0.01:2*T;
A = [1/2,0,1/2];
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


