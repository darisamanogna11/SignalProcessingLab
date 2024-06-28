n = 0:9;
x1 = randn(1, 10);
x2 =(n == 3);
y1 = conv(x1, x2);
y2 = cconv(x1, x2, 10);
c_n = 0:length(y2)-1;

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
stem(0:18, y1, "filled");
title('linear convolution');
xlabel('n');
ylabel('y1[n]');

subplot(2,2,4);
stem(c_n, y2, "filled");
title('circular convolution');
xlabel('n');
ylabel('y2[n]');

sgtitle('Linear and Circular convolution');
