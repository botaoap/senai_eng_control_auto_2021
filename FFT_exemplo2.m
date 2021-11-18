% FFT – Transformada de Fourier Rápida
% Crie um sinal senoidal de 20 Hz, amplitude de 1V, amostrado a uma frequência de 240
% Hz. Adicione a esse sinal um ruído de 60 Hz, amplitude de 1V, também senoidal,
% amostrado a uma frequência de 240 Hz.
% Calcule a transformada de Fourier do sinal com ruido. Esboce os sinais gerados e a
% transformada de Fourier.
% Dados:
% a) Sinal senoidal de 20 Hz:
% 𝑥 = 𝑠𝑒𝑛(2 ∗ pi ∗ 𝑓 ∗ 𝑡)
% 𝑥 = 𝑠𝑒𝑛(2 ∗ pi ∗ 20 ∗ 𝑡)
% b) Taxa de amostragem
% fs = 240 Hz
% c) Sinal de ruído de 60 Hz:
% 𝑟 = 𝑠𝑒𝑛(2 ∗ pi ∗ 60 ∗ 𝑡)
% d) Sinal com ruído:
% 𝑦 = 𝑥 + r

close all
clear
clc;
A = 2; % Amplitude do Sinal 2V
fs = 240; % Frequencia de amostragem
t = 0:1/fs:0.2; % Tempo de 0.2 segundos
N = length(t); % Tamanho do vetor tempo
f = 20; % Frequencia de 20Hz
sinal = A*sin(2*pi*f*t); % Gerando o sinal de 20 Hz
subplot(2,2,1);
plot(t,sinal); % Gerando o grafico
title('Sinal Senoidal de 20 Hz');
xlabel('Tempo (s)'); ylabel('Amplitude (V)');
f_noise = 60; % Frequencia de ruido 60 Hz
ruido=A*sin(2*pi*f_noise*t); % Gerando sinal de Ruido de 69 Hz
subplot(2,2,2);
plot(t,ruido); % Gerando o grafico
title('Sinal Senoidal de Ruido de 60 Hz');
xlabel('Tempo (s)'); ylabel('Amplitude (V)');
sinal_ruido = sinal + ruido; % Adiciona ruido ao sinal
subplot(2,2,3);
plot(t,sinal_ruido); % Gerando o grafico
title('Sinal Ruidoso');
xlabel('Tempo (s)'); ylabel('Amplitude (V)');
y = fft(sinal_ruido); % Calcula a Transformada de Fourier do Sinal ruidoso
y = y(1:floor(length(y)/2));
% Ajuste eixo de frequencia para o espectro
freq = (0:N-1)*fs/N;
freq = freq(1:floor(length(freq)/2));
subplot(2,2,4)
plot(freq, abs(y))
title('Espectro sinal ruidoso(Dominio da Frequencia)')
ylabel('|y(f)|')
xlabel('Frequencia (Hz)')