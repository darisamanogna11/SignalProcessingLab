L=4;
N=4;
n=0:N-1;
x=[ones(L,1);zeros(N-L,1)];
y=fft(x,N);
figure
subplot(3,1,1)
stem(n,x);
title('x[n]')
xlabel('n');
ylabel('x[n]');
subplot(3,1,2)
stem(n,abs(y));
title('magnitude of y')
xlabel('n');
ylabel('|y[n]|');
sgtitle('N=4');
subplot(3,1,3)
stem(n,angle(y));
title('phase of y')
xlabel('n');
ylabel('theta');