n = 0:3;
x1 = (n >= 0 & n <= 3);

y1 = conv(x1, x1);

y2 = conv(y1, x1);

y3=conv(y2,x1);

subplot(2, 2, 1);
stem(n, x1, 'filled');
title('original sequence');
xlabel('n');
ylabel('x1');

subplot(2, 2, 2);
stem(0:length(y1)-1, y1, 'filled'); 
title('1st convolution');
xlabel('n');
ylabel('y1');

subplot(2, 2, 3);
stem(0:length(y2)-1, y2, 'filled'); 
title('2nd convolution with itself');
xlabel('n');
ylabel('y2');

subplot(2, 2, 4);
stem(0:length(y3)-1, y3, 'filled'); 
title('3rd convolution with itself');
xlabel('n');
ylabel('y3');
sgtitle("repeated convolution by itself");
