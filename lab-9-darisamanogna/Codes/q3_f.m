original_signal = modified_signal(1:100); 
filtered_signal_fir = filtered_signal_fir(1:100); 
filtered_signal_iir = filtered_signal_iir(1:100); 

figure;

subplot(2, 2, 1);
plot(original_signal);
title('Original Input Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(2, 2, 2);
plot(filtered_signal_fir);
title('FIR Filtered Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(2, 2, 3);
plot(filtered_signal_iir);
title('IIR Filtered Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(2, 2, 4);
plot(filtered_signal_fir - filtered_signal_iir);
title('Difference (FIR - IIR)');
xlabel('Sample');
ylabel('Amplitude');


sgtitle('Input and Filtered Signals Comparison');
