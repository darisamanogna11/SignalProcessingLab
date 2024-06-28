n = -3:3;
x1n = zeros(size(n));
l = (length(n)+1)/2;
x1n(l) = 1;
M = 5;
sum = zeros(n);
hn = zeros(n);
sum = acc(x1n,M);
hn = 1/M .* sum;
disp(x1n);
disp(sum);
disp(hn);
figure;
stem(n,hn,"filled","LineWidth",1.25);
title(sprintf("Impulse response for %d:%d",n(1),n(end)));
xlabel("Time");
ylabel("Amplitude");
function y = acc(xn,M)
    y = zeros(size(xn));
for i = 1:length(xn)
    for m = 1:M
        if (i - m + 1)>=1
            y(i) =  y(i) + xn(i-m+1);
        end
    end
end
end