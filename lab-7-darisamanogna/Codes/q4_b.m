[y1,Fs1]=audioread('file_example_WAV_1MG.wav');
[y2,Fs2]=audioread('file_example_WAV_2MG.wav');
[y3,Fs3]=audioread('file_example_WAV_5MG.wav');
[y4,Fs4]=audioread('file_example_WAV_10MG.wav');

disp("sampling frequency of audio1=");
disp(Fs1);


disp("sampling frequency of audio2=");
disp(Fs2);

disp("sampling frequency of audio3=");
disp(Fs3);

disp("sampling frequency of audio4=");
disp(Fs4);
