file_name = '1.wav';
[y, Fs] = audioread(file_name);

B = 3; 
a = 1;     

quantized_audio = quantize_signal(y, B, a);

sound(y, Fs);
pause(length(y) / Fs); 

sound(quantized_audio, Fs);

disp('Original Audio:');
disp('Listen to the original audio.');
disp('Press any key to listen to the quantized audio.');
pause;
disp('Quantized Audio:');
disp('Listen to the quantized audio.');


function quantized_signal = quantize_signal(signal, B, a)
    step_size = 2 * a / (2^B);
    quantized_signal = round(signal / step_size) * step_size;
end

