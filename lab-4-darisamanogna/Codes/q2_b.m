n=1001;
p=0.8;
d=[1,p];
[y,x]=freqz(1,d,n,"whole");
figure;
stem(x,abs(y));
title('Behaviour of the system with the change in frequency')
xlabel('frequency')
ylabel('|H(z)|')