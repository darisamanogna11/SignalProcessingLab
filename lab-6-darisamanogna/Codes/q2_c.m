n=0:9;
x1=randn(1,10);
% x2=[0,0,0,1,0,0,0,0,0,0];
x2=(n==3);

dx1=fft(x1);
dx2 =fft(x2);
idx1=ifft(dx1);
idx2=ifft(dx2);
% c_n = 0:length(y2)-1;

subplot(2,2,1);
stem(n, x1, "filled");
title('random gaussian sequence');
xlabel('n');
ylabel('x1[n]');

subplot(2,2,2);
stem(n, x2, "filled");
title('shifted delta function');
xlabel('n');
ylabel('x2[n]');


subplot(2,2,3);
stem(n, idx1, "filled");
title('IDFT of dx1');
xlabel('n');
ylabel('idx1[n]');

subplot(2,2,4);
stem(n, idx2, "filled");
title('IDFT of dx2');
xlabel('n');
ylabel('idx2[n]');

sgtitle('Linear and Circular convolution using DFT');




