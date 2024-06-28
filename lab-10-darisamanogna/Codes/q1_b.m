td=0.5;
fs=10000;
F1=[480,620];
A1=[0.5,0.5];
P1=[0,0];
b1=SineSum(A1,F1,P1,td,fs);

F2=[0,0];
A2=[0,0];
P2=[0,0];
z1=SineSum(A2,F2,P2,td,fs);
x2n=[b1,z1,b1,z1,b1,z1,b1,z1];
sound(x2n,fs);