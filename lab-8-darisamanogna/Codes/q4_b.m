file_name = '0.wav'; 
[y, Fs] = audioread(file_name);
a = 1; 
quantized_signals = cell(1, 8);

for B = 1:8
    quantized_audio = quantize_signal(y, B, a);
    sound(quantized_audio, Fs);
    pause(length(quantized_audio) / Fs + 2); 
    quantized_signals{B} = quantized_audio;
end

disp('Quantized Audio Quality Observations:');
for B = 1:8
    disp(['Listening to the quantized audio with B = ' num2str(B)]);
    sound(quantized_signals{B}, Fs);
    pause(length(quantized_signals{B}) / Fs + 2);
end
