fs=10000;
F_notes=50:5:100;
N=5;
M=length(F_notes);
adsr=[0.2,0.2,0.7,0.4,0.2];
td_notes=ones(1,M);
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=1/(k^2);
    P(k)=0;
end

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);