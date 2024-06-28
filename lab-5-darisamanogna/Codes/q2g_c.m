wo=pi/200;
n=0:1000;
sn=5*sin(wo*n);
vn=randn(1,1001);
xn=sn+vn;
figure
subplot(2,1,1)
plot(n,sn);
xlabel('time')
ylabel('sn')

subplot(2,1,2)
plot(n,xn)
xlabel('time')
ylabel('xn')




