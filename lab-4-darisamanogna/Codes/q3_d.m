r=100;
t=pi/3;
n=[1,-2*cos(t),1];
d=[1,-2*r*cos(t),r*r];
[y,x]=freqz(n,d,'whole');
figure;
plot(x,abs(y));
title('Behaviour of the system with the change in t')
xlabel('frequency')
ylabel('|H(z)|')
