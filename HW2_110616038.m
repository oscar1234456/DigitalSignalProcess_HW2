delf = 32; %frequency difference
dur = 0.26; %duration
fsamp = 11025; %sampling rate
fc = 2000; %center frequency
A = 10; %amplitude(lower frequency)
B = 10; %amplitude(higher frequency)
%A=B
[xx,tt] = beat(A,B,fc,delf,fsamp,dur);

soundsc(xx,fsamp); %make a sound for beat signal

tiledlayout(3,1)
nexttile
plot(tt,xx); %signal
title("Signal");

nexttile
plotspec(xx,fsamp,2048); %spectrogram with sampling rate 2048
title("Spectrogram fsamp = 2048");

nexttile
plotspec(xx,fsamp,16);   %spectrogram with sampling rate 16
title("Spectrogram fsamp = 16");