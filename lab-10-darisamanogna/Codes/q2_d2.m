fs=10000;
td=1;
N=10;
f0=100;
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=cos(pi*k/N);
    P(k)=0;
end

xn=harmonics(A,f0,P,td,fs);
soundsc(xn,fs);