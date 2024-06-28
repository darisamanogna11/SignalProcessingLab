N=51;
n=0:N-1;
wn=ones(1,51);
nc=(N-1)/2;
hdn=1/pi*(n-nc).*(sin((n-nc)*(pi/6)));
hn=hdn.*wn;

figure;
stem(n,hn,"filled");
xlabel('time');
ylabel('hn');
