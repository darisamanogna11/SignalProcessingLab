[y1,Fs1]=audioread('file_example_WAV_1MG.wav');
[y2,Fs2]=audioread('file_example_WAV_2MG.wav');
[y3,Fs3]=audioread('file_example_WAV_5MG.wav');
[y4,Fs4]=audioread('file_example_WAV_10MG.wav');

disp("sampling frequency=");
disp(Fs1);
disp("duration Ts1=");
disp(length(y1)/Fs1);

disp("sampling frequency=");
disp(Fs2);
disp("duration Ts2=");
disp(length(y2)/Fs2);

disp("sampling frequency=");
disp(Fs3);
disp("duration Ts3=");
disp(length(y3)/Fs3);

disp("sampling frequency=");
disp(Fs4);
disp("duration Ts4=");
disp(length(y4)/Fs4);
