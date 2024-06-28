bitrate_1=1411;
bitrate_2=1411;
bitrate_3=1411;
bitrate_4=1411;

[y1,Fs1]=audioread('file_example_WAV_1MG.wav');
[y2,Fs2]=audioread('file_example_WAV_2MG.wav');
[y3,Fs3]=audioread('file_example_WAV_5MG.wav');
[y4,Fs4]=audioread('file_example_WAV_10MG.wav');


num_of_bits_used_for_ADC_1=bitrate_1/Fs1;
num_of_levels_1=2^num_of_bits_used_for_ADC_1
disp("no. of quantization levels for audio_1=");
disp(num_of_levels_1);
disp("no. of bits the ADC used for quantizing for audio_1=");
disp(num_of_bits_used_for_ADC_1);

num_of_bits_used_for_ADC_2=bitrate_2/Fs2;
num_of_levels_2=2^num_of_bits_used_for_ADC_2;
disp("no. of quantization levels for audio_2=");
disp(num_of_levels_2);
disp("no. of bits the ADC used for quantizing for audio_2=");
disp(num_of_bits_used_for_ADC_2);


num_of_bits_used_for_ADC_3=bitrate_1/Fs3;
num_of_levels_3=2^num_of_bits_used_for_ADC_3;
disp("no. of quantization levels for audio_3=");
disp(num_of_levels_3);
disp("no. of bits the ADC used for quantizing for audio_3=");
disp(num_of_bits_used_for_ADC_3);


num_of_bits_used_for_ADC_4=bitrate_1/Fs4;
num_of_levels_4=2^num_of_bits_used_for_ADC_4;
disp("no. of quantization levels for audio_4=");
disp(num_of_levels_4);
disp("no. of bits the ADC used for quantizing for audio_4=");
disp(num_of_bits_used_for_ADC_4);
