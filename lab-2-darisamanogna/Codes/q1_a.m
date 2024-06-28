n=-10:10;
u = zeros(size(n));
u(n >= 0) = 1;
N = 3;
n1 = n-N;
u1 = zeros(size(n1));
u1(n1>=0) = 1;

y = zeros(size(u));
y1 = acc(u);
y2 = acc(n-N);
ma = (1/N)*(y1-y2);

figure;
stem(n,ma,'filled','LineWidth',1.25);
function y = acc(u)
    y = zeros(size(u));  
    
    for n = 1:length(u)
        y(n) = sum(u(1:n));  
    end
end