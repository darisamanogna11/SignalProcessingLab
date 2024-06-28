n = 0:9;

x1 = rand(1, 10);
h1 = [1, ones(1, 9)]; 
h2 = (n>=-4) & (n<=5); 

y1 = conv(x1, h1);
y2 = conv(x1, h2, 'full');

subplot(3, 1, 1);
stem(n, x1, 'filled');
title('random sequence');
xlabel('n');
ylabel('x1');

subplot(3, 1, 2);
stem(0:18 , y1, 'filled'); 
title('convolution with h1');
xlabel('n');
ylabel('y1');

subplot(3, 1, 3);
stem(-4:14, y2, 'filled');
title('convolution with h2');
xlabel('n');
ylabel('y2');

