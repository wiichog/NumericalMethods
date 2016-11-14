%Fourier Transform of Sound File
clear all;
close all;

%Load File
%file = 'tuning_fork_A4.wav';
file = 'Nota.wav';
[y,Fs] = audioread(file);

Nsamps = length(y);
t = (1/Fs)*(1:Nsamps);  %Prepare time data for plot
%y = y(:,1);
%y = y + 0.1*randn(size(t'));

%Do Fourier Transform
y_fft = fft(y);
y_fftabs = abs(fft(y));           %Retain Magnitude
%y_fftabs = y_fftabs(1:Nsamps/2);  %Discard Half of Points
f = Fs*(0:Nsamps-1)/Nsamps;     %Prepare freq data for plot

%Plot Sound File in Time Domain
figure,
plot(t(1:1000), y(1:1000));
xlabel('Time (s)');
ylabel('Amplitude');
title('Sample Chord in Time Domain');

%Plot Sound File in Frequency Domain
figure,
plot(f, y_fftabs);
xlim([0 1000]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Response of Sample Chord');

audiowrite('AudioNoise.wav',y,Fs);
for i = 1:Nsamps
    if(y_fftabs(i) > 1000)
        z_fft(i)=y_fft(i);
    else
        z_fft(i)=0;
    end
end
z = ifft(z_fft);
audiowrite('Nota_Filtrada.wav',z,Fs);
zRe = real(z);
%Plot Filtered Sound File in Frequency Domain
figure,
plot(f, abs(z_fft));
xlim([0 3000]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Response Filtered');

%Plot Sound File in Time Domain
figure,
plot(t(1:Nsamps), zRe);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Sound in Time Domain');

audiowrite('AudioFiltrado.wav',zRe,Fs);

