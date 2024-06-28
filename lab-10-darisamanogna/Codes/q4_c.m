fs=10000;
M=5;
F_notes=50+50*rand(1,M);
td_notes=0.5+rand(1,M);
N=5;
adsr=[0.2,0.2,0.7,0.4,0.2];
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=1/(k^2);
    P(k)=0;
end

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
sound(yn,fs);