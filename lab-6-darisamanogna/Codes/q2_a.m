n=0:9;
x1=randn(1,10);
x2=[0,0,0,1,0,0,0,0,0,0];
disp(x1);
disp(x2);

figure
subplot(2,1,1)
stem(n,x1);
title("x1[n]")
xlabel('n')
ylabel('x1[n]')

subplot(2,1,2)
stem(n,x2);
title("x2[n]")
xlabel('n')
ylabel('x2[n]')


