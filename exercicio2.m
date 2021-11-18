% Crie um sinal senoidal de 20 Hz amostrado a uma frequência de 240 Hz. Adicione a
% esse sinal um ruído de 60 Hz, também senoidal. Esboce os sinais gerados.

% Sinal senoidal de 20 Hz:
% 𝑥 = 𝑠𝑒𝑛(2 ∗ pi ∗ 𝑓 ∗ 𝑡)
% 𝑥 = 𝑠𝑒𝑛(2 ∗ pi ∗ 20 ∗ 𝑡)
% Frequência de amostragem:
% fs = 240 Hz
% Sinal de ruído de 60 Hz:
% 𝑟 = 2 * 𝑠𝑒𝑛(2 ∗ pi ∗ 𝑓 ∗ 𝑡)
% 𝑟 = 2 * 𝑠𝑒𝑛(2 ∗ pi ∗ 60 ∗ 𝑡)
% Sinal com ruído:
% 𝑦 = 𝑥 + 𝑟
% 𝑦 = 𝑠𝑒𝑛(2 ∗ pi ∗ 20 ∗ 𝑡) + 𝑠𝑒𝑛(2 ∗ pi ∗ 60 ∗ 𝑡)

A = 1; % Amplitude do Sinal 1V
fs = 240; % frequencia de 240Hz
Ts = (1/fs); % período de amostragem
t = 0:Ts:3; % tempo de duração do sinal
x = A*sin(2*pi*20*t); % Sinal senoidal de 20 Hz:
r = A*sin(2*pi*60*t); % Sinal de ruído de 60 Hz:
y = x + r; % Sinal com ruído:


subplot(3,1,1);
plot(t,x,'r')
subplot(3,1,2);
plot(t,r,'g')
subplot(3,1,3);
plot(t,y,'b')
