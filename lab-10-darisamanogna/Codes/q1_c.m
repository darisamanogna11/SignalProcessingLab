td=2;
fs=10000;
F1=[440,480];
A1=[0.5,0.5];
P1=[0,0];
b2=SineSum(A1,F1,P1,td,fs);

F2=[0,0];
A2=[0,0];
P2=[0,0];
z2=SineSum(A2,F2,P2,td,fs);
x3n=[b2,z2,b2,z2,b2,z2,b2,z2];
sound(x3n,fs);