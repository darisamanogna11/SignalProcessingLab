n=-5:5;
n1=-3:1;
x(mod(n,2)==0)=1;
x(mod(n,2)~=0)=-1;
h=(n1>=-3 & n1<=1);
y=conv(x,h);

subplot(3,1,1);
stem(n,x,"filled");
title("x[n]");
xlabel('n');
ylabel('x[n]');

subplot(3,1,2);
stem(n1,h,"filled");
title("h[n]");
xlabel('n1');
ylabel('h[n1]');

subplot(3,1,3);
stem(-5:9,y,"filled");
title("convolution (y)");
xlabel('n');
ylabel('y[n]');

sgtitle("convolution");