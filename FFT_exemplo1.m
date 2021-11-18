% FFT – Transformada de Fourier Rápida
% Gerar um sinal senoidal, com frequência de 5 Hz, amplitude de 2 V por 3 segundos.
% Considere uma amostragem a uma taxa de 60 Hz. Calcule a transformada de Fourier
% desse sinal e esboce o seu gráfico.

close all
clear
clc;
fs=60;
t=0:1/fs:3;
N=length(t); %comprimento do vetor t
f=5;
sinal=2*sin(2*pi*f*t); %Gerando o sinal de 5 Hz no domímino do tempo
subplot(2,1,1); plot (t, sinal);
title('Sinal senoidal de 5 Hz (Dominio do tempo)');
xlabel('Tempo [s]');
ylabel ('Amplitude [V]');
y=fft(sinal);
y=y(1:floor(length(y)/2));
freq=(0:N-1)*fs/N;
freq=freq(1:floor(length(freq)/2));
subplot(2,1,2)
plot(freq, abs(y))
title('Espectro do sinal (Domínio da frequência)')
ylabel('|y(f)|')
xlabel('Frequência')
