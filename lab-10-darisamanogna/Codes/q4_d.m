fs=10000;
F_notes=100:-10:40;
N=5;
M=length(F_notes);
adsr=[0.25,0.25,0.7,0.25,0.25];
td_notes=5*ones(1,M);
A=zeros(1,N);
P=zeros(1,N);
for k=1:N
    A(k)=1/(k);
    P(k)=0;
end

yn=my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);
audiowrite("created_audio.wav",yn,fs);