fs=10000;
td=1;
N=5;
f0=50;
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=1/(k^2);
    P(k)=0;
end

xn=harmonics(A,f0,P,td,fs);
soundsc(xn,fs);