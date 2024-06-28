td= 5; 
fs = 10000; 
A=[0.5,0.5];
P=[0,0];
F=[350,440];
xn=SineSum(A,F,P,td,fs);

F1=[480,620];
A1=[0.5,0.5];
P1=[0,0];
b1=SineSum(A1,F1,P1,td,fs);

F2=[0,0];
A2=[0,0];
P2=[0,0];
z1=SineSum(A2,F2,P2,td,fs);
x2n=[b1,z1,b1,z1,b1,z1,b1,z1];

F1=[440,480];
A1=[0.5,0.5];
P1=[0,0];
b2=SineSum(A1,F1,P1,td,fs);

F2=[0,0];
A2=[0,0];
P2=[0,0];
z2=SineSum(A2,F2,P2,td,fs);
x3n=[b2,z2,b2,z2,b2,z2,b2,z2];


figure;

subplot(3,1,1)
stem(xn(1:501))
xlabel("n")
ylabel("xn")

subplot(3,1,2)
stem(x2n(1:501))
xlabel('n')
ylabel('x2n')

subplot(3,1,3)
stem(x3n(1:501))
xlabel('n')
ylabel('x3n')