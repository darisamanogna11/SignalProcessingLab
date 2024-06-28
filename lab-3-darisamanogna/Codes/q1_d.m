n=0:20;
n1=-18:14;
f=0.05;
x1=sin(2*f*pi*n);
x2(mod(n1,2)==0)=1;
x2(mod(n1,2)~=0)=-1;
y=conv(x1,x2);


subplot(3,1,1);
stem(n,x1,"filled");
title("x1[n]");
xlabel('n');
ylabel('x1[n]');

subplot(3,1,2);
stem(n1,x2,"filled");
title("x2[n]");
xlabel('n');
ylabel('x2[n]');

subplot(3,1,3);
conv_n=-(length(x1)+length(x2)-2)/2;
stem(conv_n, y, 'filled');
title("convolution (y)");
xlabel('n');
ylabel('y[n]');