N=20;
n=0:N-1;
wo=(3*pi)/10;
x=sin(wo*n);
y=fft(x,N);
figure
subplot(3,1,1)
stem(n,x);
title('x[n]')
xlabel('n');
ylabel('x[n]');
subplot(3,1,2)
stem(n,abs(y));
title('absolute of DFT of x')
xlabel('n');
ylabel('|y[n]|');
subplot(3,1,3)
stem(n,angle(y));
title('phase of y')
xlabel('n');
ylabel('theta');