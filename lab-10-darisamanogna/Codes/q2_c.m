fs=10000;
td=1;
N=10;
f0=200;
A=zeros(1,max(N));
P=zeros(1,max(N));
for k=1:N
    A(k)=1/(k);
    P(k)=0;
end

xn=harmonics(A,f0,P,td,fs);
soundsc(xn,fs);