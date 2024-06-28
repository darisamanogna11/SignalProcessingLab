n=0:9;
x1=randn(1,10);
% x2=[0,0,0,1,0,0,0,0,0,0];
x2=(n==3);

dx1=fft(x1);
dx2 =fft(x2);
idx1=ifft(dx1);
idx2=ifft(dx2);
y1=conv(x1,x2);
y2=cconv(x1,x2,10);
y3=conv(idx1,idx2);
y4=cconv(idx1,idx2,10);
c_n = 0:length(y2)-1;

figure

subplot(2,2,1);
stem(0:18, y1, "filled");
title('linear convolution');
xlabel('n');
ylabel('y1[n]');

subplot(2,2,2);
stem(c_n, y2, "filled");
title('circular convolution');
xlabel('n');
ylabel('y2[n]');


subplot(2,2,3);
stem(0:18, y3, "filled");
title('linear convolution using DFT');
xlabel('n');
ylabel('y3[n]');

subplot(2,2,4);
stem(c_n, y4, "filled");
title('circular convolution using DFT');
xlabel('n');
ylabel('y4[n]');

sgtitle('Linear and Circular convolution with and without using DFT');




